""" Makes a robot implementation from the class roam aound the path
within the game """
 
from math import *
import random
import time

import matplotlib.pyplot as plt
import networkx as nx
from planning.astar.global_map import (plot_map, GlobalMap, 
                                       MIN_UNCONTRAINED_PENALTY)


from copy import deepcopy
from collections import OrderedDict

from planning.astar.local_graph import plan_path
from smoothing.gd import smooth_graph, graph_to_path
from steering.steering import Steering
# don't change the noise paameters

#steering_noise    = 0.1
#distance_noise    = 0.03
#measurement_noise = 0.05


# ------------------------------------------------
# 
# this is the robot class
#

class robot:

    # --------
    # init: 
    #	creates robot and initializes location/orientation to 0, 0, 0
    #

    def __init__(self, length = 40):
        self.x = 0.0
        self.y = 0.0
        self.orientation = 0.0
        self.length = length
        self.steering_noise    = 0.0
        self.distance_noise    = 0.0
        self.measurement_noise = 0.0
        self.penalty    = 0
        self.num_steps         = 0

        self.steering = Steering()
    # --------
    # set: 
    #	sets a robot coordinate
    #

    def set(self, new_x, new_y, new_orientation):

        self.x = float(new_x)
        self.y = float(new_y)
        self.orientation = float(new_orientation) % (2.0 * pi)


    # --------
    # set_noise: 
    #	sets the noise parameters
    #

    def set_noise(self, new_s_noise, new_d_noise, new_m_noise):
        # makes it possible to change the noise parameters
        # this is often useful in particle filters
        self.steering_noise     = float(new_s_noise)
        self.distance_noise    = float(new_d_noise)
        self.measurement_noise = float(new_m_noise)

    # --------
    # check: 
    #    checks of the robot pose collides with an obstacle, or
    # is too far outside the plane

    def check_collision(self, global_map):
        penalty = global_map.check_collision([self.x, self.y])
        if penalty == MIN_UNCONTRAINED_PENALTY:
            return False

        self.penalty += penalty

        return True
        
    def check_goal(self, goal, threshold = 20.0):
        dist =  sqrt((float(goal[0]) - self.x) ** 2 + (float(goal[1]) - self.y) ** 2)
        return dist < threshold
        
    # --------
    # move: 
    #    steering = front wheel steering angle, limited by max_steering_angle
    #    distance = total distance driven, most be non-negative

    def move(self, steering, distance, 
             tolerance = 0.001, max_steering_angle = pi / 6.0, real=False):

        if steering > max_steering_angle:
            steering = max_steering_angle
        if steering < -max_steering_angle:
            steering = -max_steering_angle
        if distance < 0.0:
            distance = 0.0

        cmds = []
        if real:
            if steering > 0:
                cmds.append(('right', steering*.5))
            else:
                cmds.append(('left', abs(steering)*.5))

            if distance:
                cmds.append(('up', distance*0.03))

                
        # make a new copy
        res = robot()
        res.length            = self.length
        res.steering_noise    = self.steering_noise
        res.distance_noise    = self.distance_noise
        res.measurement_noise = self.measurement_noise
        res.penalty    = self.penalty
        res.num_steps         = self.num_steps + 1

        # apply noise
        steering2 = random.gauss(steering, self.steering_noise)
        distance2 = random.gauss(distance, self.distance_noise)


        # Execute motion
        turn = tan(steering2) * distance2 / res.length

        if abs(turn) < tolerance:

            # approximate by straight line motion

            res.x = self.x + (distance2 * cos(self.orientation))
            res.y = self.y + (distance2 * sin(self.orientation))
            res.orientation = (self.orientation + turn) % (2.0 * pi)

        else:

            # approximate bicycle model for motion

            radius = distance2 / turn
            cx = self.x - (sin(self.orientation) * radius)
            cy = self.y + (cos(self.orientation) * radius)
            res.orientation = (self.orientation + turn) % (2.0 * pi)
            res.x = cx + (sin(res.orientation) * radius)
            res.y = cy - (cos(res.orientation) * radius)

        # check for collision
        # res.check_collision(grid)
        if real:
            return res, cmds

        return res

    # --------
    # sense: 
    #    

    def sense(self):

        return [random.gauss(self.x, self.measurement_noise),
                random.gauss(self.y, self.measurement_noise)]

    # --------
    # measurement_prob
    #    computes the probability of a measurement
    # 

    def measurement_prob(self, measurement):

        # compute errors
        error_x = measurement[0] - self.x
        error_y = measurement[1] - self.y

        # calculate Gaussian
        error = exp(- (error_x ** 2) / (self.measurement_noise ** 2) / 2.0) \
            / sqrt(2.0 * pi * (self.measurement_noise ** 2))
        error *= exp(- (error_y ** 2) / (self.measurement_noise ** 2) / 2.0) \
            / sqrt(2.0 * pi * (self.measurement_noise ** 2))

        return error



    def __repr__(self):
        # return '[x=%.5f y=%.5f orient=%.5f]'  % (self.x, self.y, self.orientation)
        return '[%.5f, %.5f]'  % (self.x, self.y)






# ------------------------------------------------
# 
# this is the particle filter class
#

class particles:

    # --------
    # init: 
    #	creates particle set with given initial position
    #

    def __init__(self, x, y, theta, 
                 steering_noise, distance_noise, measurement_noise, N = 100):
        self.N = N
        self.steering_noise    = steering_noise
        self.distance_noise    = distance_noise
        self.measurement_noise = measurement_noise
        
        self.data = []
        for i in range(self.N):
            r = robot()
            r.set(x, y, theta)
            r.set_noise(steering_noise, distance_noise, measurement_noise)
            self.data.append(r)


    # --------
    #
    # extract position from a particle set
    # 
    
    def get_position(self):
        x = 0.0
        y = 0.0
        orientation = 0.0

        for i in range(self.N):
            x += self.data[i].x
            y += self.data[i].y
            # orientation is tricky because it is cyclic. By normalizing
            # around the first particle we are somewhat more robust to
            # the 0=2pi problem
            orientation += (((self.data[i].orientation
                              - self.data[0].orientation + pi) % (2.0 * pi)) 
                            + self.data[0].orientation - pi)
        return [x / self.N, y / self.N, orientation / self.N]

    # --------
    #
    # motion of the particles
    # 

    def move(self, steer, speed):
        newdata = []

        for i in range(self.N):
            r = self.data[i].move(steer, speed)
            newdata.append(r)
        self.data = newdata

    # --------
    #
    # sensing and resampling
    # 

    def sense(self, Z):
        w = []
        for i in range(self.N):
            w.append(self.data[i].measurement_prob(Z))

        # resampling (careful, this is using shallow copy)
        p3 = []
        index = int(random.random() * self.N)
        beta = 0.0
        mw = max(w)

        for i in range(self.N):
            beta += random.random() * 2.0 * mw
            while beta > w[index]:
                beta -= w[index]
                index = (index + 1) % self.N
            p3.append(self.data[index])
        self.data = p3

    



    

# --------
#
# run:  runs control program for the robot
#


def run(global_map, start, goal, spath, params, printflag = False, speed = 5, timeout = 2000):

    mg = nx.DiGraph()

    myrobot = robot()
    myrobot.set(start[0], start[1], pi/2)

    mg.add_node(0, pos=(myrobot.x, myrobot.y))

    myrobot.set_noise(steering_noise, distance_noise, measurement_noise)
    filter = particles(myrobot.x, myrobot.y, myrobot.orientation,
                       steering_noise, distance_noise, measurement_noise)

    cte  = 0.0
    err  = 0.0
    N    = 0

    index = 0 # index into the path
    
    while not myrobot.check_goal(goal) and N < timeout:

        diff_cte = - cte


        # ----------------------------------------
        # compute the CTE

        # start with the present robot estimate
        estimate = filter.get_position()

        ### ENTER CODE HERE
        x, y, theta = estimate
                
        while True:
            x1, y1 = spath[index]

            Rx = x - x1
            Ry = y - y1

            x2, y2 = spath[index + 1]
            dx = x2 - x1
            dy = y2 - y1
        
            u = abs(Rx*dx + Ry*dy)/(dx*dx + dy*dy)
            if u > 1 and index < (len(spath) - 2):
                index +=1
            else:
                break

        cte = (Ry * dx - Rx * dy) / (dx * dx + dy * dy)


        # ----------------------------------------


        diff_cte += cte

        steer = - params[0] * cte - params[1] * diff_cte 

        myrobot = myrobot.move(steer, speed)
        filter.move(steer, speed)

        Z = myrobot.sense()
        filter.sense(Z)
        
        #update penalty
        myrobot.check_collision(global_map)

        err += (cte ** 2)
        N += 1

        mg.add_node(N, pos=(myrobot.x, myrobot.y))
        mg.add_edge(N-1, N)

        if printflag:
            print myrobot, cte, index, u

    return [myrobot.check_goal(goal), myrobot.penalty, myrobot.num_steps, mg]


# ------------------------------------------------
# 
# this is our main routine
#

def main(global_map, init, goal, steering_noise, distance_noise, measurement_noise, 
         weight_data, weight_smooth, p_gain, d_gain):

    start_pos = [2650, 2650]
    goal_pos = [1900, 400]

    graph_path = plan_path(start_pos, goal_pos)
    path_pos = nx.get_node_attributes(graph_path, 'pos')

    sg = smooth_graph(graph_path, start_pos, goal_pos, True, 
                      weight_data, weight_smooth)

    sg_pos = nx.get_node_attributes(sg, 'pos')

    spath = graph_to_path(sg)

    global_map.plot()
    
    nx.draw(sg, sg_pos, node_size=5, edge_color='r')
    
    (reached_goal, penalty, num_steps, mg) = run(global_map, start_pos, 
                                                 goal_pos, spath, 
                                                 [p_gain, d_gain])

    mg_pos = nx.get_node_attributes(mg, 'pos')
    nx.draw(mg, mg_pos, node_size=5, edge_color='b')

    plt.show()


class Simulate(object):
    def __init__(self):
        self.start_pos = [2650, 2650]
        self.goal_pos = [1900, 400]

        self.graph_path = plan_path(self.start_pos, self.goal_pos)

        self.global_map = GlobalMap()

    def run(self, weight_data, weight_smooth, p_gain, d_gain):
        print "starting run with", weight_data, weight_smooth, p_gain, d_gain
        sg = smooth_graph(self.graph_path, self.start_pos, self.goal_pos, 
                          False, weight_data, weight_smooth)

        spath = graph_to_path(sg)

        (reached_goal, penalty, num_steps, mg) = run(self.global_map, 
                                                     self.start_pos, 
                                                     self.goal_pos, 
                                                     spath, 
                                                     [p_gain, d_gain])

        print "finished run:", reached_goal, penalty, num_steps

        #self.global_map.plot()

        #mg_pos = nx.get_node_attributes(mg, 'pos')
        #nx.draw(mg, mg_pos, node_size=5, edge_color='b')

        #plt.show(block=False)

        return (reached_goal, penalty, num_steps)

        


# ------------------------------------------------
# 
# input data and parameters
#


# grid format:
#   0 = navigable space
#   1 = occupied space

grid = [[0, 1, 0, 0, 0, 0],
        [0, 1, 0, 1, 1, 0],
        [0, 1, 0, 1, 0, 0],
        [0, 0, 0, 1, 0, 1],
        [0, 1, 0, 1, 0, 0]]


init = [0, 0]
goal = [len(grid)-1, len(grid[0])-1]


steering_noise    = 0.01
distance_noise    = 0.03
measurement_noise = 0.05

weight_data       = 1.1
weight_smooth     = 0.2
p_gain            = 2.0
d_gain            = 6.0

    
#main(GlobalMap(), init, goal, steering_noise, distance_noise, measurement_noise, 
#     weight_data, weight_smooth, p_gain, d_gain)




def twiddle(init_params):
    n_params   = len(init_params)
    dparams    = [1.0 for row in range(n_params)]
    params     = [0.0 for row in range(n_params)]
    K = 10

    NO_GOAL_PENALTY = 10e10

    s = Simulate()

    for i in range(n_params):
        params[i] = init_params[i]


    best_error = 0.0;
    for k in range(K):
        ret = s.run(params[0], params[1], params[2], params[3])
        if ret[0]:
            best_error += ret[1] * 100 + ret[2]
        else:
            best_error += NO_GOAL_PENALTY
    best_error = float(best_error) / float(k+1)
    print best_error

    n = 0
    while sum(dparams) > 0.0000001:
        for i in range(len(params)):
            params[i] += dparams[i]
            err = 0
            for k in range(K):
                ret = s.run(params[0], params[1], params[2], params[3])
                if ret[0]:
                    err += ret[1] * 100 + ret[2]
                else:
                    err += NO_GOAL_PENALTY
            print float(err) / float(k+1)
            if err < best_error:
                best_error = float(err) / float(k+1)
                dparams[i] *= 1.1
            else:
                params[i] -= 2.0 * dparams[i]            
                err = 0
                for k in range(K):
                    ret = s.run(params[0], params[1], params[2], params[3])
                    if ret[0]:
                        err += ret[1] * 100 + ret[2]
                    else:
                        err += NO_GOAL_PENALTY
                print float(err) / float(k+1)
                if err < best_error:
                    best_error = float(err) / float(k+1)
                    dparams[i] *= 1.1
                else:
                    params[i] += dparams[i]
                    dparams[i] *= 0.5
        n += 1
        print 'Twiddle #', n, params, ' -> ', best_error
    print ' '
    return params


def mytwiddle(init_param, tol = 0.2): #Make this tolerance bigger if you are timing out!
            
    p = [0, 0, 0]
    dp = [1, 1, 1]
    
    best_err = run(p)
    while (sum([abs(x) for x in dp]) > tol):
        for i in range(len(p)):
            p[i] += dp[i]
            err = run(p)

            if err < best_err:
                best_err = err
                dp[i]*=1.1
                continue

            p[i] -= 2*dp[i]
            err = run(p)
            if err < best_err:
                best_err = err
                dp[i]-= 2*dp[i]
                continue

            p[i] += dp[i]
            dp[i]*=0.9
    
            #print "param", p, "dp", dp, "best_err", best_err

    return run(p)


#twiddle([weight_data, weight_smooth, p_gain, d_gain])

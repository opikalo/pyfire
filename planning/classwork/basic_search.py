# ----------
# User Instructions:
# 
# Define a function, search() that returns a list
# in the form of [optimal path length, x, y]. For
# the grid shown below, your function should output
# [11, 4, 5].
#
# If there is no valid path from the start point
# to the goal, your function should return the string
# 'fail'
# ----------

# Grid format:
#   0 = Navigable space
#   1 = Occupied space

grid = [[0, 0, 1, 0, 0, 0],
        [0, 0, 1, 0, 0, 0],
        [0, 0, 1, 0, 1, 0],
        [0, 0, 1, 0, 1, 0],
        [0, 0, 1, 0, 1, 0]]
init = [0, 0]
goal = [len(grid)-1, len(grid[0])-1]
cost = 1

delta = [[-1, 0], # go up
         [ 0,-1], # go left
         [ 1, 0], # go down
         [ 0, 1]] # go right

delta_name = ['^', '<', 'v', '>']

def get_neighbours(grid, point):
    p_x, p_y = point
    neighbours = []
    for d_x, d_y in delta:
        n_x = p_x + d_x
        n_y = p_y + d_y

        try:
            if n_x < 0 or n_y <0:
                continue

            nav = grid[n_x][n_y]
            if nav == 0:
                neighbours.append([n_x, n_y])
        except IndexError:
            continue

    return neighbours

def search(grid,init,goal,cost):
    g = 0
    open_list = [[g, init]]
    closed = {}
    while open_list:
        open_list.sort()
        open_list.reverse()

        g, p = open_list.pop()
        
        if p == goal:
            print [g, goal[0], goal[1]]
            return
        
        closed[tuple(p)] = True

        ns = get_neighbours(grid, p)
        g += 1
        for n in ns:
            if tuple(n) not in closed:
                open_list.append([g, n])
    
    print "fail"

from nose.tools import eq_

def test_get_n1():
    global grid

    ns = get_neighbours(grid, [0, 0])
    eq_( ns, [[1,0], [0,1]])

def test_get_n2():
    global grid
    goal = [len(grid)-1, len(grid[0])-1]
    ns = get_neighbours(grid, goal)
    eq_( ns, [[goal[0]-1, goal[1]]])


if __name__ == '__main__':
    search(grid, init, goal, cost)

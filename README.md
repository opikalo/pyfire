pyfire
======

# Introduction
This project is a result of a two week hackathon to complete final project for CS8803 AI for Robotics class taught by Sebastian Thrun, also avalibale through Udacity [CS373](https://www.udacity.com/course/cs373)

The goal of the project is to play a web base flash game autonomously. 
Currently this project is focused on one particular game, [Firefighters Truck 2](http://www.nonamelab.com/games/online/firefighters-truck-2.html). This game is developed by [NoNameLab](http://www.nonamelab.com/) 

The objective of the game is to navigate a fire engine car through the streets of the city to the place of fire.
It is worth noting that there are at least 5 different games developed by the same company, using the same engine, but with variations on vehicle size, physical conditions, etc. Try driving a double-joined bus in winter!

This particular game was chosen because it allows for maximum application of knowledge from the course.

# Quick demo
You can see it inaction playing level 2 almost to completion:
[![Quick demo](http://img.youtube.com/vi/abh-948NupE/0.jpg)](http://www.youtube.com/watch?v=abh-948NupE)
[Youtube](http://www.youtube.com/watch?v=abh-948NupE)

# Technical overview
The general idea is to take a snapshot of the game in progress (screen grab) and perform feature  recognition on the image to figure out the position of the objects in the game. At this stage some additional information from the game is necessary to complete the high level goals, i.e. navigation from start to goal requires additional knowledge of the map, obstacles and terrain. This data is obtained by decompiling flash image usign off the shelf free tools. 

# Technical details
## Planning
Some advanced planning is required to get from point A to point B and this planning has to be reasonable (no driving through the buildings or pools). As results there are two parts to planning: unconstrained planning (in the areas of parking within the game) and constrained planning (driving on one way streets / obeying traffic laws ).

The game has built in waypoints (stored in a binary format) that are used to contruct a global graph for constrained navigation taht is used for cars that are navigating in the game. 

For unconstrained planning (ususally around start and goal positions), a square graph is constructed around the starting position, and the penalty weight is assigned for each edge, according to the position of the nodes of the edge. Here is an example of the local edge around starting position of the level1 of the game:


![Unconstrained graph construction and weight assignment](https://raw.githubusercontent.com/opikalo/pyfire/master/planning/snapshots/graph_weights.png)

Here is the example of the path planning using A* in unconstrained enviroment:

![Unconstrained graph planning](https://raw.githubusercontent.com/opikalo/pyfire/master/planning/snapshots/unconstrained_planning_astar.png)


So the path planning algorithm is the following: 
* construct local unconstrained grid graphs for start and goal destinations. Graphs have to be large enough to reach the constrained graph created in the next step, assign penalty weight for each edge based on node location. The graph has to be dense enough not to skip "features" of landscape.
* construct global graph based on the waypoints used for cars in the game (those waypoints constitute legal motions within the game and also summarise traffic rules)
* stitch together local unconstrained graph and global graph usign the following algorithm:
* for each local node that is within a certain threshold from the global node, join them

Finally, the path is determined by A* algorithm from start to goal.

Combined path for level 1  looks like this, highlighted with red:

![Constrained graph construction](https://raw.githubusercontent.com/opikalo/pyfire/master/planning/snapshots/local_global_path_planning.png)

Teh only difference for the class material is that I used directional graphs rather then grids, but all the rest is the same. 

# Smoothing
Currently both constrained smoothing and "fixed" smoothing are supported by the code. When global constrained graph is constructed, each node in this graph is marked as fixed, so there is an option to keep smoothing only to local graphs (unconstrained motion). We use the same gradient descent algorithm as described in class:
![Unfixed Smoothing](https://raw.githubusercontent.com/opikalo/pyfire/master/smoothing/snapshots/smoothing_graph_unfixed.png)
Here is some fixed smoothing:
![fixed Smoothing](https://raw.githubusercontent.com/opikalo/pyfire/master/smoothing/snapshots/smoothing_graph_fixed.png)
After smoothing the path is split up in chuncks. The same algorithm used for updating which chunck of the path to use for control use for CTE computation.

# Localization 
Localization is split up in two parts: map localization and car localization within the map

## Map localization
At any point during the game, only a part of the global map is visible to the end user. A snapshot of that map is templateMatched (histogram based localization)to the global map of the game in order to determine which part of the global map is on the screen. you can think of the global map providing the data about the world, and a car trying to find a match against the global view using local snapshot image. In order to speed up localization only a portion of the global image is used in localizing the data (the image is truncated with some margine around previous position).
A frame rate of 25 fps was consistently obeserved. Here is [localization video demo] (http://youtu.be/rahvhGxrYP0)

## Car localization
During most of the game the car is normally right in the center of the map. As result we can use map localization for figuring out car position, as long as we are not driving in the outliers of the game.

For game outliers (they are particularly troublesome for Level 1, I have attempted to track car using rotation invariant momography feature object detection usigng sift/surf, with mixed results. The frame rate drops significantly (it is very computationally heavy), almost down to 2 fps. And results are noisy. Quite often, due to low resolution of the game, there are too few features (4 are necessary to do homography), in that case I just take the average for geometry from the features found. If no features are matched, I fall back to map center.

A particle filter was used to deal with the noise on car positional measurement, but this work has not being completed fully (particle filter position estimation is in the `other` folder)

# Steering
Steering was the most time consuming and annoying part of the project. To make car go you have to press a key, and hold it for certain **exact** period of time. This has to be done without slowing down the rest of the loop, thus requiring some kind of concurrent scheduling (aka twisted). However, twisted does not pplay niceslly with `multiprocessing` package in python, and if I piled up all the pieces (matplotlib display, image capturing, localization, etc) the performance of the app went down to 1/2 frames per sec.

As it is I'm using a pool of CPUs to send keys asyncronously, which has a wild overhead, but given a timing constraint on the project, I had no better solution. As result performance of the game play is widely dependent on the muscle of the PC. Steering is the only component that is OS specific (Wiindows) at this stage, but I'm sure this can be isolated through high level API nicely too.

# Robot model
A bycicle robot from the class is used for the robot modelling, without any changes, just calibrated for length and speed. This is currently the weakest part of the implementation. Some serious model fitting is necessary to make particle filter work properly. This is very high on the to-do list.

# Control
It is very bare bones at this stage:measure robot position, feed it into PID controller (actually just P controller at this time). I have implemented `robot_control.py` that allows class robot to run through the path, and run twiddle on it to characterize performance tracking. But until the robot model is adjusted to correspond the real behavior of the firetruck there is little purpose in the twiddle.

# Obstacles
I have done some work on figuring out and detecting moving objects in the game, but it is very experimental, see `screen_capture` folder for details. I assume that I can add some dynamic programming to the code to allow for swerving around other cars / pedestrians in the future.

# Installation and use
Please intall scipy-stack, opencv, networksx and some other packages from unofficial python binaries. I have used virtual environment with all packages in `misc/requirements.txt` 
To see a demo, launch a web browser with the game, showing the map of start and goal. From command line, run `python navigate.py` and click on the web browser of the game to redirect key presses to the application.








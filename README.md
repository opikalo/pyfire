pyfire
======

# Introduction
This project is a result of a two week hackathon to complete final project for CS8803 AI for Robotics class taught by Sebastian Thrun, also avalibale through Udacity [CS373](https://www.udacity.com/course/cs373)

The goal of the project is to play a web base flash game autonomously. 
Currently this project is focused on one particular game, [Firefighters Truck 2](http://www.nonamelab.com/games/online/firefighters-truck-2.html). This game is developed by [NoNameLab](http://www.nonamelab.com/) 

The objective of the game is to navigate a fire engine car through the streets of the city to the place of fire.
It is worth noting that there are at least 5 different games developed by the same company, using the same engine, but with variations on vehicle size, physical conditions, etc. Try driving a double-joined bus in winter!

This particular game was chosen because it allows for maximum application of knowledge from the course.

# Technical overview
The general idea is to take a snapshot of the game in progress (screen grab) and perform feature  recognition on the image to figure out the position of the objects in the game. At this stage some additional information from the game is necessary to complete the high level goals, i.e. navigation from start to goal requires additional knowledge of the map, obstacles and terrain. This data is obtained by decompiling flash image usign off the shelf free tools. 

# Technical details
## Planning
Some advanced planning is required to get from point A to point B and this planning has to be reasonable (no driving through the buildings or pools). As results there are two parts to planning: unconstrained planning (in the areas of parking within the game) and constrained planning (driving on one way streets / obeying traffic laws ).

For unconstrained planning (ususally around start and goal positions), a square graph is constructed around the starting position, and the penalty weight is assigned for each edge, according to the position of the nodes of the edge. here is an example of the local edge around starting position of the level1 of the game:


![Unconstrained graph construction and weight assignment](https://raw.githubusercontent.com/opikalo/pyfire/master/planning/snapshots/graph_weights.png)



Map localization demo:
http://youtu.be/rahvhGxrYP0


Good graph tutorial:
https://www.wakari.io/sharing/bundle/nvikram/Basics%20of%20Networkx?has_login=False


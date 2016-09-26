# Visualizing-Perlin-Noise

[Link](http://www.mohithingorani.com/pattern-formation)

My visuals are based on creating particles and moving them with a certain velocity that is based on the perlin noise. The particles leave a trail behind forming aesthetically pleasing lines, which are pseudo random in nature. The DLA walkers on the other hand quickly fade away creating grid line patterns.

![](https://github.com/mohithingorani/Visualizing-Perlin-Noise/blob/master/IMG_2603-2.JPG)
Some of the features of the current project:

Mouse Interaction: To quickly test the visuals, I am using the mouse clicks for launching the particles / walkers.

Kinect Interactions: When a person is detected in space, I begin to track his hands.

As soon as the distance between the hand and the corresponding hip is more than 35 cms, the hand becomes active and the particles / walkers come alive to the corresponding position the projected display.

Gestures: The particles/ walkers are added to the system when the viewers, wave their hands or push ( a gesture in Simple OpenNI library)
Perlin Noise: the number of people present in the space varies the noise detail. When no one is present only 2 octaves are in use. For every additional person detected number of octaves gets incremented. At this point, I am not using any fall off so all the octaves are equally weighted.
Random Walkers:  I additionally implemented random walkers for where a bunch of walkers are launched into space and perform a grid like random walk and slowly fades away.

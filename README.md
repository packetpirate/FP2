# Final Project Assignment 2: Explore One More! (FP2) 
DUE March 30, 2015 Monday (2015-03-30)
Author: Darin Beaudreau

### My Library: Portaudio

For my second library in the exploratory phase of the final project, I decided to look into an audio library. I had no luck finding a library to play
mp3 files, so I settled for a library to generate sounds from simple sine waves and such.

I don't know much about sound, so messing around with this library was difficult. I had to look for examples online to generate a simple sine wave.
After that, I wanted to see what would happen if I generated a bunch of random sounds and played them all at once. Surprisingly, I don't notice much deviation in the sound. Some of the sounds actually sound a little harmonic.

The idea was to use this library to generate the sounds that will be played in my final project, which is the A* pathfinding algorithm. I plan to assign a
random sound to each tile in the grid containing the start point, destination, and obstacles, so that when the algorithm "walks" the path it creates,
sounds play as it walks over each tile in the grid. I was also given an idea by a classmate that I may or may not use. They suggested that I assign
"pleasant" noises to the path created, and annoying ones to all the other tiles, and then give control of the "player" to the user, so that if they walk
over a tile not part of the path, they hear an annoying noise to let them know they're going the wrong way.

This library will require some more experimentation before I know what I'm doing with it, but hopefully I can figure it out well enough to get a basic
sound generation method working. I even had a mishap or two while testing. One of which was after repeatedly running the program, my playback device
cut out and I was unable to hear sound from my speakers for five minutes!

The code that I used to test the library is attached, and upon being run, generates 10 random sine waves between 300 and 800 hz, and plays them all at once.
But don't worry! It doesn't sound THAT bad...


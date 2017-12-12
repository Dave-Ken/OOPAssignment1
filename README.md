# OOPAssignment1Ship


## A Simple ship with basic controls  

The requirements of the assignment are as follows:

"Use Processing to create a UI for a sci-fi movie device like a warp drive, engines, weapons system. You can base it on any movie you like 
or come up with your own. It should be kinda usable. It should have lots of animation & interactivity and look amazing. It can be as far 
out as you like. In other words it can be for an alien. You sould use all the stuff you are learning on the course:"

* Variables, loops, methods
* Arrays & array lists
* Objects, inheritance, polymorphism
* The unit circle and trigonometry
* pushMatrix, popMatrix, translate and rotate

In order to complete this task there was three files used main.pde, SpaceRock.pde and Star.pde.

### main.pde
the purpose of main.pde is to give the application some structure and the user some control. After the screen is setup and all of the
objects are displayed all of the users controls are setup all of the controls are setup twice so that the controls arn't case sensitive

#### List of controls
  * a or A key press will move the ship left.
  * d or D key press will move the ship right.
  * w or W key press will move the ship up.
  * s or S key press will move the ship down.
  * p or P key press will increase the ships speed.
  * l or L key press will reduce the ships speed.
  * A mouse click will shoot a lazer.

### SpaceRock.pde
The SpaceRock.pde file is used for the SpaceRock class this class is responsible for generating the space rocks and manages how the user
interacts with the space rocks. Within this file is an unrequested function witch tracks a users score making this application move of a
game but it seamed like a reasonable change as it added a reqiremet for collision detection a valuable skill in programing. Theres a 
function to move the space rocks without user interaction so the background is not stagnent the whole time but some  of the directions
have been commented out as it was strenuous on the users eyes 


### Star.pde
This file is used to handle all aspects of the application that interacts with any of the stars to do this a stars class was required. 
The stars class is used when creating the stars, then again anytime the ship moves. To do this the ships speed needs to be stored hear 
as speed that the ship needs to be used as it travels between the stars.

### Aspects of the assignment were difficult and rewarding
Adding the ability for the ship to be able to move proved to be quite troublesome at first but once i realised that the ship's screen
should be used as a reference and that i only needed to take 1 star at a time i.e. **stars[i]** i was able to check if a star was 
touching the ships screen and to give it a new random x & y values at the opposite side of the ships screen.

### Functions that i wanted to add
I wanted to add a warp drive function, this function could only be used once the ship had reached **"Max Speed"** the issue that i was 
having and never found a solution to was that my ships screen had been used as refference for everything but i would need to recode alot 
of the application and use the center of the screen as reference but which i didn't have time to do at the time i found that out.


### Link To Video
<a href="http://www.youtube.com/watch?feature=player_embedded&v=8ZhPa9DrOGU
" target="_blank"><img src="http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg" 
alt="Link to Assignment video" width="240" height="180" border="10" /></a>

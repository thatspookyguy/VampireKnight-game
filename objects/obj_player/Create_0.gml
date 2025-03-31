controlsSetup()
getControls()


grav = .8
xSpeed = 0;
ySpeed = 0;
acc = 0.5 /// after a slash, set an alarm for the duration (and maybe a bit after) that reduces this value
drag = 0.7
decay = 0.97
jumpHeight = -6
jumpCount = 0;
jumpHoldTimer = 0;
jumpHoldFrames = 18;
walkSpeedCap = 4
scootVal = 0.5

newY = 0
newX = 0


slopeTouch = false;
ceilingTouch = false;
canJump = true;
moving = false;

image_xscale = 2;
image_yscale = 2;
sprite_index = spr_knightSide;
//resize();
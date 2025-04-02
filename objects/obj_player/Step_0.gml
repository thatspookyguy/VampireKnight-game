controlsSetup()
getControls()
///USE IMAGE_ANGLE FOR ROTATING SLASH SPRITE

/// work on FIXING JUMPS !!!1

/// Gravity

slopeTouch = false;

/// SPRITES !!!111!11!
if (keyboard_check(vk_left) && !keyboard_check(vk_right)) {
	image_xscale = -2;
	moving = true;
}
else if (keyboard_check(vk_right) && !keyboard_check(vk_left)) {
	image_xscale = 2;
	moving = true; 
}
else {
	moving = false;
}

if  (!obj_slash.isSlashing == true) {
	if (moving == true) {
		if (slopeTouch == false && place_meeting(x, y + 1, obj_wall)) {
			sprite_index = spr_knightWalk;
		}
		else if (slopeTouch == true) {
			sprite_index = spr_knightSlideDownS;
		}
		else if (!place_meeting(x, y + 1, obj_wall)) {
			sprite_index = spr_knightJump;
		}
	}
	else {
		if (!place_meeting(x, y + 1, obj_wall)) {
			sprite_index = spr_knightJump;
		}
		else {
			sprite_index = spr_knightSide;
		}
	}
}		
		

if(abs(xSpeed) <= walkSpeedCap){ ///speed caps
	xSpeed+=acc*(rightKey - leftKey) /// horizontal movement
	
}


if !place_meeting(x + xSpeed, y -abs(xSpeed), obj_wall){ ///slopes
		while place_meeting(x + xSpeed, y, obj_wall) { 
			if(!place_meeting(x + 1, y -1, obj_wall) && keyboard_check(vk_right)){
				y -= 0.3
			}
			if(!place_meeting(x - 1, y -1, obj_wall) && keyboard_check(vk_left)){
				y -= 0.3
			}
			y -=acc* abs(xSpeed)
			y -= 4
			//grav = 0
		}
		grav = 0.6
		slopeTouch = true
	}


if place_meeting(x + xSpeed, y, obj_wall) && !slopeTouch { /// collision
	xSpeed = 0
}

if (instance_place(x, y + 1, obj_movingPlatform) != noone && abs(xSpeed) < 3){ ///moving platforms
	x += instance_place(x, y + 1, obj_movingPlatform).xSpeed 
	y += 4
}

	
/// Y movement


if (jumpKeyBuffered && canJump)
{
	//// reset buffer
	jumpKeyBuffered = false;
	jumpKeyBufferTimer = 0;
	/// jump
	jumpHoldTimer = jumpHoldFrames;
}
if !jumpKey {
	jumpHoldTimer = 0;
}

if jumpHoldTimer > 0 {
	ySpeed = jumpHeight;
	jumpHoldTimer --;
}

if place_meeting(x, y + ySpeed, obj_wall) { /// collision
	/// set y to zero to collide
	ySpeed = 0;
	if ySpeed >= 0 && place_meeting(x, y + 3, obj_slope) {
		drag = 0.1;
	} else { drag = 0.7} 
	if (canJump && (keyboard_check(vk_right) - keyboard_check(vk_left)) == 0) {
		xSpeed *= drag
	}
	else if (abs(xSpeed) > 5) {
		xSpeed *= drag
	}
}

/// set if I'm on ground

if (ySpeed >= 0 && place_meeting(x, y+ 3, obj_wall)) || (place_meeting(x, y+ 3, obj_slope)) {
	canJump = true;
	if (sprite_index == spr_knightJSDown) || (sprite_index == spr_knightJSSide) || (sprite_index == spr_knightJSUp) {
		sprite_index = spr_knightSide
	}
}
else {
	canJump = false;
}


xSpeed *= decay /// Speed decay
if ySpeed < 15 {
ySpeed += grav /// gravity
}

x += xSpeed
y += ySpeed

//// debugging for speed
show_debug_message(ySpeed)
show_debug_message(xSpeed)





if place_meeting(x, y, obj_wall){
	for(var i = 0; i < 1000; i++){ //// goes up to 1000 to ensure that there will be a space detected
		///Left
		if !place_meeting(x - i,y,obj_wall){
			x -= i
			break;
		}
		///Right
		if !place_meeting(x + i,y,obj_wall){
			x += i
			break;
		}
		///Up
		if !place_meeting(x,y - i,obj_wall){
			y -= i
			break;
		}
		///Down
		if !place_meeting(x,y + i,obj_wall){
			y += i
			break;
		}
		///Top Left
		if !place_meeting(x - i,y - i,obj_wall){
			x -= i
			y -= i
			break;
		}
		///Top Right
		if !place_meeting(x + i,y - i,obj_wall){
			x += i
			y -= i
			break;
		}
		///Bottom Left
		if !place_meeting(x - i,y + i,obj_wall){
			x -= i
			y += i
			break;
		}
		///Bottom Right
		if !place_meeting(x + i,y + i,obj_wall){
			x += i
			y += i
			break;
		}
	}
}
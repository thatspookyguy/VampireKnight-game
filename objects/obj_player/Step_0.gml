/// Force eject from solid platforms

///// there's something wrong here

///USE IMAGE_ANGLE FOR ROTATING SLASH SPRITE

/// work on FIXING JUMPS !!!1

/// Gravity

///checks to prevent clipping into blocks
//ySpeed = 0;
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

if (moving == true) {
	if (slopeTouch == false && place_meeting(x, y + 1, obj_wall)) {
		sprite_index = spr_knightWalk;
	}
	else if (slopeTouch == true) {
		//sprite_index = spr_knightSlideDownS;
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
		
		

if(abs(xSpeed) <= walkSpeedCap){ ///speed caps
	xSpeed+=acc*(keyboard_check(vk_right) - keyboard_check(vk_left)) /// horizontal movement
	
}
else{
	if(xSpeed > 0 && keyboard_check(vk_left)){ 
		xSpeed+=acc* (0 - keyboard_check(vk_left))
	}
	if (xSpeed < 0 && keyboard_check(vk_right)){ 
		xSpeed+=acc*(keyboard_check(vk_right) - 0)
	}
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
	
//if (slopeTouch == true) {
//	if(keyboard_check(vk_left)) {
//		sprite_index = spr_knightSlideDownS;
//		image_xscale = -2;
//	}
//	else if (keyboard_check(vk_right)) {
//		sprite_index = spr_knightSlideUp;
//		image_xscale = 2;
//	}
//}
// fix to make sure it works both ways


if place_meeting(x + abs(xSpeed), y, obj_wall) && !slopeTouch { /// collision
	xSpeed = 0
}


//var platSpeedBoost = noone

if (instance_place(x, y + 1, obj_movingPlatform) != noone && abs(xSpeed) < 3){ ///moving platforms
	x += instance_place(x, y + 1, obj_movingPlatform).xSpeed 
	y += 4
}

if place_meeting(x, y + ySpeed, obj_wall){ /// collision
	ySpeed = 0;
	if (ySpeed < 0) {
		ceilingTouch = true;
		y+= 4
	}
	else {
		ceilingTouch = false;
	}
	if ((keyboard_check(vk_right) - keyboard_check(vk_left)) == 0){
		xSpeed *= drag 
	}
}



if (place_meeting(x, y, obj_wall)) { ///jumping, working theory but isnt really working
	//if keyboard_check_pressed(vk_space) {
	jump = true;
	//}
	jumpLimit = 0;

}

if (jump && keyboard_check(vk_space)) {
	ySpeed += jumpHeight;
	jumpLimit += 1;
	if jumpLimit >= 15  {
		jump = false;
		jumpLimit = 0;
	}
}


//if (place_meeting(x, y + ySpeed, obj_wall)) { ///jumping  /// does not work
//	if keyboard_check_pressed(vk_space) {
//		set_alarm(0, 20)
//	}
//	//jumpLimit = 0;
//	if (keyboard_check(vk_space) && (get_alarm(0) > -1)) {
//		ySpeed += jumpHeight;
//	}
//}


//if (place_meeting(x, y + ySpeed, obj_wall)) {  /// sean's idea, works but only on moving plats and also goes all in one, no pressure sensistivity
//	//if keyboard_check_pressed(vk_space) {
//	jumpHeight = -15;
//	jump = true;
//}

//if (jump && keyboard_check(vk_space)) {
//	ySpeed += jumpHeight;
//	jumpHeight += 1;
//	if jumpHeight < 0 {
//		jump = false;
//	//	jumpLimit = 0;
//	}
//}



xSpeed *= decay /// Speed decay
ySpeed += grav

x += xSpeed
y += ySpeed

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
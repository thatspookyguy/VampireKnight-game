getControls();
controlsSetup();

//show_debug_message(obj_knockbackProvider.knockback)
//show_debug_message(obj_bat.knockback)

if (leftKey && !rightKey && !leftUp && !leftDown && savedSlashDirection == 5) {
	x = obj_player.x - 25
	y = obj_player.y + 24
	image_xscale = -2;
	image_yscale = 2;
	image_angle = 0;
	slash_direction = 1
}
else if (rightKey && !leftKey && !rightUp && !rightDown  && savedSlashDirection == 5) {
	x = obj_player.x + 25
	y = obj_player.y + 24
	image_xscale = 2;
	image_yscale = 2;
	image_angle = 0;
	slash_direction = 0
}
else if (((upKey && !downKey) || (leftUp && !downKey) || (rightUp && !downKey))  && savedSlashDirection == 5) {
	x = obj_player.x 
	y = obj_player.y - 2
	if obj_player.image_xscale > 0 {
		image_xscale = 2;
		image_angle = 90;
	} 
	else { 
		image_xscale = -2 
		image_angle = 270;
	}
	slash_direction = 2
}
else if (!obj_player.canJump && savedSlashDirection == 5 && ((downKey && !upKey) || (leftDown && !upKey) || (rightDown && !upKey)))  {
	x = obj_player.x 
	y = obj_player.y + 85
	if obj_player.image_xscale > 0 {
		image_xscale = 2;
		image_angle = 270;
	}
	else {
		image_xscale = -2 
		image_angle = 90;
	}
	image_yscale = -2;
	slash_direction = 3
}
else if (savedSlashDirection == 5 && !upKey && !downKey && !leftKey && !rightKey) {
	if obj_player.image_xscale > 0 {
		x = obj_player.x + 25
		y = obj_player.y + 24
		image_xscale = 2;
		image_yscale = 2;
		image_angle = 0;
		slash_direction = 0
	}
	else{
		x = obj_player.x - 25
		y = obj_player.y + 24
		image_xscale = -2;
		image_yscale = 2;
		image_angle = 0;
		slash_direction = 1
	}
		
}

if (savedSlashDirection == 1) {
	x = obj_player.x - 25
	y = obj_player.y + 24
	image_xscale = -2;
	image_yscale = 2;
	image_angle = 0;
}
else if savedSlashDirection == 0 {
	x = obj_player.x + 25
	y = obj_player.y + 24
	image_xscale = 2;
	image_yscale = 2;
	image_angle = 0;
}
else if savedSlashDirection == 2 {
	x = obj_player.x 
	y = obj_player.y - 2
	if obj_player.image_xscale > 0 {
		image_xscale = 2;
		image_angle = 90;
	} 
	else { 
		image_xscale = -2 
		image_angle = 270;
	}

}
else if (savedSlashDirection == 3)  {
	x = obj_player.x 
	y = obj_player.y + 85
	if obj_player.image_xscale > 0 {
		image_xscale = 2;
		image_angle = 270;
	}
	else {
		image_xscale = -2 
		image_angle = 90;
	}
	image_yscale = -2;
}



//show_debug_message(savedSlashDirection)
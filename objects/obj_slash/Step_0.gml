getControls();
controlsSetup();



if (leftKey && !rightKey && !leftUp && !leftDown) {
	x = obj_player.x + 15
	y = obj_player.y / 2
	image_xscale = -2;
	image_yscale = 2;
	image_angle = 0;
	slash_direction = 1
}
else if (rightKey && !leftKey && !rightUp && !rightDown) {
	x = obj_player.x - 15
	y = obj_player.y / 2
	image_xscale = 2;
	image_yscale = 2;
	image_angle = 0;
	slash_direction = 0
}
else if ((upKey && !downKey) || (leftUp && !downKey) || (rightUp && !downKey)) {
	x = obj_player.x 
	y = obj_player.y - 5
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
else if (!obj_player.canJump && ((downKey && !upKey) || (leftDown && !upKey) || (rightDown && !upKey)))  {
	x = obj_player.x 
	y = obj_player.y + 1
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
else {
	if obj_player.image_xscale > 0 {
		x = obj_player.x - 15
		y = obj_player.y 
		image_xscale = 2;
		image_yscale = 2;
		image_angle = 0;
		slash_direction = 0
	}
	else{
		x = obj_player.x + 15
		y = obj_player.y 
		image_xscale = -2;
		image_yscale = 2;
		image_angle = 0;
		slash_direction = 1
	}
		
}


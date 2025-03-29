getControls();
controlsSetup();


if (leftKey && !rightKey) {
	x = obj_player.x + 10
	y = obj_player.y
	image_xscale = -2;
	slash_direction = 0
}
else if (rightKey && !leftKey) {
	x = obj_player.x - 10
	y = obj_player.y
	image_xscale = 2;
	slash_direction = 1
}
else if ((upKey && !downKey) || (leftUp && !downKey) || (rightUp && !downKey)) {
	x = obj_player.x 
	y = obj_player.y - 10
	image_yscale = 2;
	slash_direction = 2
}
else if (!obj_player.canJump && ((downKey && !upKey) || (leftDown && !upKey) || (rightDown && !upKey)))  {
	x = obj_player.x 
	y = obj_player.y + 10
	image_yscale = 2;
	slash_direction = 3
}
else{
	if obj_player.image_xscale > 0 {
		x = obj_player.x - 10
		y = obj_player.y
		image_xscale = 2;
		slash_direction = 0
	}
	else{
		x = obj_player.x + 10
		y = obj_player.y
		image_xscale = -2;
		slash_direction = 1
	}
		
}

//while(alarm_get(1) > -1) { 
//	obj_player.acc = 0.2 
//}
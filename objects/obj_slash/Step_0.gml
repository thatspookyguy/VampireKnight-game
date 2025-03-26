
if (keyboard_check(vk_left) && !keyboard_check(vk_right)) {
	x = obj_player.x + 10
	y = obj_player.y
	image_xscale = -2;
	slash_direction = 0
}
else if (keyboard_check(vk_right) && !keyboard_check(vk_left)) {
	x = obj_player.x - 10
	y = obj_player.y
	image_xscale = 2;
	slash_direction = 1
}
else if (keyboard_check(vk_up) && !keyboard_check(vk_down)) {
	x = obj_player.x 
	y = obj_player.y - 10
	image_yscale = 2;
	slash_direction = 2
}
else if (keyboard_check(vk_down) && !keyboard_check(vk_up)) {
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

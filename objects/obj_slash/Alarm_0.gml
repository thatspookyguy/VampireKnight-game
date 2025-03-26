//obj_slash.visible = true;
if(slashing == true) {
	if (instance_place(x, y, obj_wall)) {
		if slash_direction == 0 {
			obj_player.xSpeed -= instance_place(x, y, obj_wall).knockback
		}
		else if slash_direction = 1 {
			obj_player.xSpeed += instance_place(x, y, obj_wall).knockback
		}
		else if slash_direction = 2 {
			obj_player.ySpeed += instance_place(x, y, obj_wall).knockback
		}
		else {
			obj_player.ySpeed -= instance_place(x, y, obj_wall).knockback
		}

	}
}
slashing = false;
obj_slash.visible = false;
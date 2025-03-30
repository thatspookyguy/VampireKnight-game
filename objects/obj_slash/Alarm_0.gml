obj_slash.visible = true;

if(slashing == true) {
	image_index = 0
	obj_player.image_index = 0;
	
	mask_index = spr_slash
	if (instance_place(x, y, obj_wall)) {
		if slash_direction == 0 {
			obj_player.xSpeed -= instance_place(x, y, obj_wall).knockback
			//obj_player.acc = 0;
			if (!obj_player.canJump) {
			obj_player.sprite_index = spr_knightJSSide;
			} else { obj_player.sprite_index = spr_knightSlashSide; }
			
		}
		else if slash_direction = 1 {
			obj_player.xSpeed += instance_place(x, y, obj_wall).knockback
			//obj_player.acc = 0;
			if (!obj_player.canJump) {
				obj_player.sprite_index = spr_knightJSSide;
			} else { obj_player.sprite_index = spr_knightSlashSide; }

		}
		else if slash_direction = 2 {
			obj_player.ySpeed += instance_place(x, y, obj_wall).knockback
			if (!obj_player.canJump) {
				obj_player.sprite_index = spr_knightJSUp;
			} else { obj_player.sprite_index = spr_knightSlashUp; }
		}
		else {
			obj_player.ySpeed -= instance_place(x, y, obj_wall).knockback
			obj_player.sprite_index = spr_knightJSDown; 
		}

	}
}
slashing = false;
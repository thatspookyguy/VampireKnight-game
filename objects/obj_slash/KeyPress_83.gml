//// press s to slash !!!



if (alarm_get(1) > -1) {
	slashing = false;
}
else {
	slashing = true;
	sprite_index = spr_slash;
	image_index = 0;
	isSlashing = true;
	savedSlashDirection = slash_direction
	alarm_set(0, 1)/// how long until the actual knockback occurs
	alarm_set(1, 25); /// slash cooldown timer
	//sprites
	if savedSlashDirection == 0 {
			if (!obj_player.canJump) {
			obj_player.sprite_index = spr_knightJSSide;
			} else { obj_player.sprite_index = spr_knightSlashSide; }
	}
	else if savedSlashDirection == 1 {
			if (!obj_player.canJump) {
				obj_player.sprite_index = spr_knightJSSide;
			} else { obj_player.sprite_index = spr_knightSlashSide; }
	}
	else if savedSlashDirection == 2 {
			if (!obj_player.canJump) {
				obj_player.sprite_index = spr_knightJSUp;
			} else { obj_player.sprite_index = spr_knightSlashUp; }
	}
	else if savedSlashDirection == 3 {
		obj_player.sprite_index = spr_knightJSDown; 
	}
}

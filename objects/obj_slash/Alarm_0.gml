
obj_slash.visible = true;

if(slashing == true) {
	image_index = 0
	obj_player.image_index = 0;
	
	mask_index = spr_slash
	if (instance_place(x, y, obj_knockbackProvider)) {
		if savedSlashDirection == 0 {
			if obj_player.xSpeed > 0 {
				obj_player.xSpeed -= ((obj_player.xSpeed / 2 ) * instance_place(x, y, obj_knockbackProvider).knockback)
			} else { obj_player.xSpeed -=  instance_place(x, y, obj_knockbackProvider).knockback }
			//sprites
			if (!obj_player.canJump) {
			obj_player.sprite_index = spr_knightJSSide;
			} else { obj_player.sprite_index = spr_knightSlashSide; }
			
		}
		else if savedSlashDirection == 1 {
			if obj_player.xSpeed < 0 {
				obj_player.xSpeed += ((obj_player.xSpeed / 2 ) * instance_place(x, y, obj_knockbackProvider).knockback)
			} else { obj_player.xSpeed +=  instance_place(x, y, obj_knockbackProvider).knockback }
			//sprites 
			if (!obj_player.canJump) {
				obj_player.sprite_index = spr_knightJSSide;
			} else { obj_player.sprite_index = spr_knightSlashSide; }

		}
		else if savedSlashDirection == 2 {
			if obj_player.ySpeed < 0 {
			obj_player.ySpeed += ((obj_player.ySpeed / 2 ) * instance_place(x, y, obj_knockbackProvider).knockback )
			} else { obj_player.ySpeed += instance_place(x, y, obj_knockbackProvider).knockback } 
			//sprites
			if (!obj_player.canJump) {
				obj_player.sprite_index = spr_knightJSUp;
			} else { obj_player.sprite_index = spr_knightSlashUp; }
		}
		else {
			if obj_player.ySpeed > 0 {
				obj_player.ySpeed -= ((obj_player.ySpeed / 5 ) * instance_place(x, y, obj_knockbackProvider).knockback)
			} else { obj_player.ySpeed -= instance_place(x, y, obj_knockbackProvider).knockback } 
			//sprites
			obj_player.sprite_index = spr_knightJSDown; 
		}

	}
	if  instance_place(x, y, obj_bat) {
		var hitEnemy = instance_place(x, y, obj_bat)
		hitEnemy.alarm[0] = -1;
		if (hitEnemy.canHit == true) {
			hitEnemy.alarm[0] = 120;
		}

}
}

slashing = false;



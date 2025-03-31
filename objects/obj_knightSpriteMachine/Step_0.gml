var index = obj_player.image_index;
var sprite = obj_player.sprite_index;
var moving = obj_player.moving;


if (moving == true) {
	if (obj_player.slopeTouch == false && obj_player.place_meeting(x, y + 1, obj_wall)) {
		sprite = spr_knightWalk;
	}
	else if (obj_player.slopeTouch == true) {
		sprite = spr_knightSlideDownS;
	}
	else if (!place_meeting(x, y + 1, obj_wall)) {
		sprite = spr_knightJump;
	}
}
else {
	if (!place_meeting(x, y + 1, obj_wall)) {
		sprite = spr_knightJump;
	}
	else {
		sprite = spr_knightSide;
	}
}
	

/// SLASHING STUFFS

if(obj_slash.slashing) {
	obj_player.image_index = 0;

	if (global.slashsprite == true) {
		if obj_slash.slash_direction == 0 {
			if (!obj_player.canJump) {
			sprite = spr_knightJSSide;
			} else { sprite = spr_knightSlashSide; }
			
		}
		else if obj_slash.slash_direction = 1 {
			if (!obj_player.canJump) {
				sprite = spr_knightJSSide;
			} else { sprite = spr_knightSlashSide; }

		}
		else if obj_slash.slash_direction = 2 {
			if (!obj_player.canJump) {
				sprite = spr_knightJSUp;
			} else {sprite = spr_knightSlashUp; }
		}
		else {
			sprite = spr_knightJSDown; 
		}

	}
}
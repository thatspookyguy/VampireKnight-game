//the alarm for displaying the bored idle animation
if (global.moving == false) {
	if (sprite_index == spr_knightRight) {
		sprite_index = spr_knightDanceRight;
	}
	else if (sprite_index == spr_knightLeft) {
		sprite_index = spr_knightDanceLeftt;
	}
}


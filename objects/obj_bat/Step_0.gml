// Inherit the parent event
if (alarm_get(0) > -1) {
	sprite_index = spr_batHit;
	mask_index = spr_nothing
	canHit = false;
	knockback = 0;
	
}
else {
	sprite_index = spr_bat
	mask_index = spr_bat
	canHit = true;
	knockback = 10;
}
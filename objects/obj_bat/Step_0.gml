// Inherit the parent event
if (alarm_get(0) > -1) {
	sprite_index = spr_batHit;
	canHit = false;
	knockback = 0;
	
}
else {
	sprite_index = spr_bat
	canHit = true;
	knockback = 15;
}
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
	alarm_set(1, 20); /// slash cooldown timer
}

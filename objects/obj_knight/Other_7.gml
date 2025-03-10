//when the idle animation dance ends, it switches back to the normal idle and resets the timer

if (sprite_index == spr_knightDanceRight) {
	sprite_index =  spr_knightRight;
	alarm_set(0, 480);
}
else if (sprite_index == spr_knightDanceLeftt) {
	sprite_index = spr_knightLeft;
	alarm_set(0, 480);
}

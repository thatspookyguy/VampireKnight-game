//when the idle animation dance ends, it switches back to the normal idle and resets the timer
if (sprite_index == spr_knightDance) {
	sprite_index = spr_knightTest2_2;
	alarm_set(0, 480);
}
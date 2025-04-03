if (obj_slash.isSlashing == true) {
	/// sets alarm to unstun
	alarm_set(2, 90);

	/// stops ghost from moving
	speed = 0;
	
	// set sprite to blushing 
	sprite_index = spr_ghostHurt;
	audio_play_sound(snd_ghostBlush, 0, false, 0.3, 0, random_range(0.8, 1.2))
	/// makes sprite faded 
	image_blend = c_ltgray;
}
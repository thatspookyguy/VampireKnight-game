if (obj_slash.isSlashing == true) {
	/// sets alarm to unstun
	alarm_set(2, 110);

	/// stops ghost from moving
	speed = 0;
	
	// set sprite to blushing 
	sprite_index = spr_ghostHurt;
	/// makes sprite faded 
	image_blend = c_ltgray;
}
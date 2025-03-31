if keyboard_check(vk_f4) {
	if full == true {
		window_set_fullscreen(false);
		full = false;
	}
	else{ window_set_fullscreen(true); full = true;}
		
}
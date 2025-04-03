if (obj_slash.isSlashing == true) {
	
	if (sprite_index == spr_checkpointLit)
		{
			exit;
		}
	audio_play_sound(snd_fwoosh, 0, false, 0.2, 0, random_range(0.8, 1.2))
	sprite_index = spr_checkpointLit;
		ini_open("checkpoint.ini");
		ini_write_real("player", "x", x);
		ini_write_real("player", "y", y + 30);
		ini_close();
}

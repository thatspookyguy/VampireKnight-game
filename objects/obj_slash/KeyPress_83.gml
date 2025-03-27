//// press s to slash !!!

if (alarm_get(1) > -1) {
	slashing = false;
}
else {
	slashing = true;
	alarm_set(0, 8); /// how long until the actual knockback occurs
	alarm_set(1, 20); /// slash cooldown timer
}


/// while(alarm_get(1) > -1) { set acceleration to 0.1 } 

//obj_slash.visible = true;

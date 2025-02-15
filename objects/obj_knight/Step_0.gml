//basic test movement, this'll be updated when we add physics n junk
if global.cutscene == false {
	if (keyboard_check(ord("A")) == true) {
		x -= global.walkSpeed;
	}
	if (keyboard_check(ord("D")) == true) {
		x += global.walkSpeed;
	}
}
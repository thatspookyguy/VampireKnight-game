function controlsSetup() {
	jumpBufferTime = 15;
	jumpKeyBuffered = 0;
	jumpKeyBufferTimer = 0;
}

function getControls(){
	controlsSetup()
	
	///directions 
	rightKey = keyboard_check(vk_right);
	leftKey = keyboard_check(vk_left);
	upKey = keyboard_check(vk_up);
	downKey = keyboard_check(vk_down);
	
	if leftKey && downKey {
		leftDown = true;
	} else{ leftDown = false; }
	
	if leftKey && upKey {
		leftUp = true;
	 }else{ leftUp = false; }
	 
	if rightKey && downKey {
		rightDown = true;
	}	else{ rightDown = false; }
	
	if rightKey && upKey {
		rightUp = true;
	} else{ rightUp = false; }
	
	
	///actions
	jumpKey = keyboard_check(vk_space);
	jumpKeyPressed = keyboard_check_pressed(vk_space);
	slashPress = keyboard_check(ord("S"));
	
	// jump key buffering
	if jumpKeyPressed
	{
		jumpKeyBufferTimer = jumpBufferTime;
	}
	if jumpKeyBufferTimer > 0
	{
		jumpKeyBuffered = 1;
		jumpKeyBufferTimer--;
	}
	else { jumpKeyBuffered = 0; }
	
}
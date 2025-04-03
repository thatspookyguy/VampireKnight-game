



if !instance_exists(obj_lantern) {
	room_goto_next();
	if (file_exists("checkpoint.ini"))
	{
        file_delete("checkpoint.ini");
	}
}
else {
	if obj_lantern.hit == true {
		room_goto_next();
		if (file_exists("checkpoint.ini"))
		{
		    file_delete("checkpoint.ini");
		}
	}
}



if place_meeting(x, y, obj_player){
	for(var i = 0; i < 1000; i++){ //// goes up to 1000 to ensure that there will be a space detected
		///Left
		if !place_meeting(x - i,y,obj_player){
			obj_player.x -= i
			break;
		}
		///Right
		if !place_meeting(x + i,y,obj_player){
			obj_player.x += i
			break;
		}
		///Up
		if !place_meeting(x,y - i,obj_player){
			obj_player.y -= i
			break;
		}
		///Down
		if !place_meeting(x,y + i,obj_player){
			obj_player.y += i
			break;
		}
		///Top Left
		if !place_meeting(x - i,y - i,obj_player){
			obj_player.x -= i
			obj_player.y -= i
			break;
		}
		///Top Right
		if !place_meeting(x + i,y - i,obj_player){
			obj_player.x += i
			obj_player.y -= i
			break;
		}
		///Bottom Left
		if !place_meeting(x - i,y + i,obj_player){
			obj_player.x -= i
			obj_player.y += i
			break;
		}
		///Bottom Right
		if !place_meeting(x + i,y + i,obj_player){
			obj_player.x += i
			obj_player.y += i
			break;
		}
	}
}
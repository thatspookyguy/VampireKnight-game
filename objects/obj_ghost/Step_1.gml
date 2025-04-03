 
speed *= 0.97;
if alarm_get(2) < 0 {
if (collision_line(x,y,obj_player.x,obj_player.y,obj_ghost,false,true) = noone && alarm_get(0) == -1 && distance_to_object(obj_player)<= 240) {
    if(alarmSet = false || blushStun == true){
		alarm_set(1, 90);
		alarmSet = true;
		sprite_index = spr_ghostChargeS;
		blushStun = false;
	}
	if (alarm_get(1) == -1){
		direction = point_direction(x,y,obj_player.x,obj_player.y);
		sprite_index = spr_ghostCharge;
		for(var i = 0; i < 10; i++;){
			speed= 11;
		}
	}

	alarm_set(0, 120);
	alarm_set(1, 90);
}
}

if alarm_get(2) < 0 {
if (collision_line(x,y,obj_player.x,obj_player.y,obj_ghost,false,true) = noone && distance_to_object(obj_player) > 240) {
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	if speed < 2{
		speed+= 0.1;
	}
	sprite_index = spr_ghost;
	alarmSet = false;
}
}
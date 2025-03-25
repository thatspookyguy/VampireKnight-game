///// ok so I literally copy paasted my collision code into a collision function and it works now

//if place_meeting(x + abs(xSpeed), y, obj_wall) && !slopeTouch { /// collision
//	xSpeed = 0
//}

//var inst = instance_place(x, y + 1, obj_movingPlatform);
//var platSpeedBoost = noone

//if (inst != noone){
//	if (abs(xSpeed) < 3)
//	{
//		x += inst.xSpeed
//	} 
//}

//if place_meeting(x, y + ySpeed, obj_wall){ /// collision
//	if (ySpeed < 0){
//		ceilingTouch = true;
//		y+= 4
//	}
//	ySpeed = 0
//	if keyboard_check(vk_space) && ! ceilingTouch
//        {
//                ySpeed += jumpHeight        
//        } 
//	if ((keyboard_check(vk_right) - keyboard_check(vk_left)) == 0){
//		xSpeed *= drag 
//	}
	
//}

if place_meeting(x, y, obj_wall){
	for(var i = 0; i < 1000; i++){ //// goes up to 1000 to ensure that there will be a space detected
		///Left
		if !place_meeting(x - i,y,obj_wall){
			x -= i
			break;
		}
		///Right
		if !place_meeting(x + i,y,obj_wall){
			x += i
			break;
		}
		///Up
		if !place_meeting(x,y - i,obj_wall){
			y -= i
			break;
		}
		///Down
		if !place_meeting(x,y + i,obj_wall){
			y += i
			break;
		}
		///Top Left
		if !place_meeting(x - i,y - i,obj_wall){
			x -= i
			y -= i
			break;
		}
		///Top Right
		if !place_meeting(x + i,y - i,obj_wall){
			x += i
			y -= i
			break;
		}
		///Bottom Left
		if !place_meeting(x - i,y + i,obj_wall){
			x -= i
			y += i
			break;
		}
		///Bottom Right
		if !place_meeting(x + i,y + i,obj_wall){
			x += i
			y += i
			break;
		}
	}
}
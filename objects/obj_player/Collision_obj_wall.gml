/// ok so I literally copy pasted my collision code into a collision function and it works now

//// X collision and slopes
jump = true;
jumpHeight = -2;
jumpLimit = 0;

var scootVal = 0.5
if place_meeting(x + xSpeed, y, obj_wall)
{
    ///// checks for slopes going up
    if !place_meeting(x + xSpeed, y - abs(xSpeed)-1, obj_wall) {
        while place_meeting(x + xSpeed, y, obj_wall ) { y -= scootVal};
    }
    
    else { 
        /// smooth collision
        while !place_meeting(x + (scootVal * sign(xSpeed)) , y, obj_wall){
            x += (scootVal * sign(xSpeed))
        }
        /// actual collision
        xSpeed = 0;
    }
}

/// going down slopes

if ySpeed >= 0 && !place_meeting(x + xSpeed, y + 3, obj_wall) && place_meeting(x + xSpeed, y + abs(xSpeed)+1, obj_wall) {
    while !place_meeting(x + xSpeed, y + 1, obj_wall ) 
    {
        y += scootVal * 10; 
        ySpeed += 5 * abs(xSpeed)
    }
}

//if place_meeting(x, y + ySpeed, obj_wall){ /// collision
//	ySpeed = 0;
//	if (ySpeed < 0) {
//		ceilingTouch = true;
//		y+= 4
//	}
//	else {
//		ceilingTouch = false;
//	}
//	if ((keyboard_check(vk_right) - keyboard_check(vk_left)) == 0){
//		xSpeed *= drag 
//	}
//}


//if place_meeting(x, y, obj_wall){
//	for(var i = 0; i < 1000; i++){ //// goes up to 1000 to ensure that there will be a space detected
//		///Left
//		if !place_meeting(x - i,y,obj_wall){
//			x -= i
//			break;
//		}
//		///Right
//		if !place_meeting(x + i,y,obj_wall){
//			x += i
//			break;
//		}
//		///Up
//		if !place_meeting(x,y - i,obj_wall){
//			y -= i
//			break;
//		}
//		///Down
//		if !place_meeting(x,y + i,obj_wall){
//			y += i
//			break;
//		}
//		///Top Left
//		if !place_meeting(x - i,y - i,obj_wall){
//			x -= i
//			y -= i
//			break;
//		}
//		///Top Right
//		if !place_meeting(x + i,y - i,obj_wall){
//			x += i
//			y -= i
//			break;
//		}
//		///Bottom Left
//		if !place_meeting(x - i,y + i,obj_wall){
//			x -= i
//			y += i
//			break;
//		}
//		///Bottom Right
//		if !place_meeting(x + i,y + i,obj_wall){
//			x += i
//			y += i
//			break;
//		}
//	}
//}
/// ok so I literally copy pasted my collision code into a collision function and it works now

//// X collision and slopes
jump = true;
jumpHeight = -2;
jumpLimit = 0;

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

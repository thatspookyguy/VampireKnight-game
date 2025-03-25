/// @description Insert description here
// You can write your code in this editor
var rightWall = noone
var bottomWall = noone
var topWall = noone
var leftWall = noone
var list = ds_list_create();
var listSize = instance_place_list(x, y, obj_movingPlatform, list, false)
for (var i = 0; i < listSize; i += 1)
{
	var listInstance = list[| i]
	///check for walls in both directions 
	///Right Walls
	if listInstance.bbox_left - listInstance.xSpeed >= bbox_right
	{
		if !instance_exists(rightWall) || listInstance.bbox_left < rightWall.bbox_left{
			rightWall = listInstance 
		}
	}
	///Left Walls
	else if listInstance.bbox_right - listInstance.xSpeed <= bbox_left
	{
		if !instance_exists(leftWall) || listInstance.bbox_right > leftWall.bbox_right{
			leftWall = listInstance 
		}
	}
	///Bottom Walls
	else if listInstance.bbox_top - listInstance.ySpeed >= bbox_bottom
	{
		if !instance_exists(bottomWall) || listInstance.bbox_top < bottomWall.bbox_top{
			bottomWall = listInstance 
		}
	///Top Walls
	else if listInstance.bbox_bottom - listInstance.ySpeed <= bbox_top
	{
		if !instance_exists(topWall) || listInstance.bbox_bottom > topWall.bbox_bottom{
			topWall = listInstance 
		}
	}
}
}

/// frees memory by destroying list

ds_list_destroy(list)

/// gets out of wall 
	/// right wall
	if instance_exists(rightWall){
		var rightDist = bbox_right -x; 
		x = rightWall.bbox_left - rightDist;
	}
	/// left wall
	if instance_exists(leftWall){
		var leftDist = x - bbox_left; 
		x = leftWall.bbox_right + leftDist;
		
	}
	/// bottom wall
	if instance_exists(bottomWall){
		var bottomDist = bbox_bottom - y; 
		y = bottomWall.bbox_top + bottomDist;
	}
	/// top wall
	if instance_exists(topWall){
		var topDist = y - bbox_top; 
		var targetY = topWall + topDist
		y = topWall.bbox_bottom + topDist;
		if (!place_meeting(x, targetY, obj_wall)){
			y = targetY
		}
	}
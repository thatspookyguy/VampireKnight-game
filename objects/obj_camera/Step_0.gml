///exit if there's no player
if !instance_exists(obj_player){ exit;}

/// camera size

var _camWidth = camera_get_view_width(view_camera[0]);
var _camHeight = camera_get_view_height(view_camera[0]);

/// get Camera coordinates

var _camX = obj_player.x - _camWidth / 2;
var _camY = obj_player.y - _camHeight / 2;

/// GET IN BORDER NOW !111!!! \\\    
_camX = clamp(_camX, 0, room_width - _camWidth);
_camY = clamp(_camY, 0, room_height - _camHeight);

//// smooth out movement
finalCamX += (_camX - finalCamX) * trailSpeed
finalCamY += (_camY - finalCamY) * trailSpeed

//// set camera coordianes

camera_set_view_pos(view_camera[0], finalCamX, finalCamY);
// Inherit the parent event
event_inherited();

if (instance_exists(obj_menuInstructions)) {
	instance_destroy(obj_menuInstructions);
}
//else {
//	instance_create_layer(170, 120, "Instances", obj_menuOptions)
//}
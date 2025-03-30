

part_system_drawit(global._part_system);

var camera = view_get_camera(0);

if (!surface_exists(self.light_surface)) {
    var cam_width = camera_get_view_width(camera);
    var cam_height = camera_get_view_height(camera);
    
    self.light_surface = surface_create(cam_width, cam_height);
}

surface_set_target(self.light_surface);
draw_clear(#000020);
camera_apply(camera);

gpu_set_blendmode(bm_subtract);

var scale = 2 // + 0.05 * sin(current_time / 300);
var sprite = spr_light;



with (obj_lantern) {
	if (obj_lantern.hit == true) {
	    draw_sprite_ext(sprite, 0, self.x, self.y - 60, scale, scale, 0, c_white, 1);
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
	}
}

with (obj_player) {
    draw_sprite_ext(sprite, 0, self.x, self.y - 40, scale * 1.5, scale * 1.5, 0, c_white, 1);
}

gpu_set_blendmode(bm_normal);

surface_reset_target();
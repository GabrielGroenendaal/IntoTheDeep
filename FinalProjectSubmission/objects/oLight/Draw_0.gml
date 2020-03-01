/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor


if !surface_exists(surf)
    {
    var _cw = camera_get_view_width(view_camera[0]);
    var _ch = camera_get_view_height(view_camera[0]);
    surf = surface_create(_cw * 2.5, _ch * 2.5);
    surface_set_target(surf);
    draw_set_colour(standard_color);
    draw_set_alpha(0);
    draw_rectangle(0, 0, _cw * 2.5, _cw * 2.5, false);
	//draw_rectangle(-2000, -2000, 22000, 20000, 0);
    surface_reset_target();
    }	
else
{
	if (surface_exists(surf)) {
	var _cw = camera_get_view_width(view_camera[0]);
	var _ch = camera_get_view_height(view_camera[0]);
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);
	surface_set_target(surf);
	draw_set_color(standard_color);
	draw_set_alpha(standard_alpha);
	draw_rectangle(0, 0, _cw * 2.5, _cw * 2.5, false);
	//draw_rectangle(-2000, -2000, 22000, 22000, 0);
	gpu_set_blendmode(bm_subtract);
	with (oLightParent)
	    {
			var _sw = sprite_width / 2;
			var _sh = sprite_height / 2;

			switch(object_index)
			{
				case player:
					draw_sprite_ext(sLight, 0, x - _cx - 620, y - _cy - 620, 1.2 + random(0.05), 1.2 + random(0.05), 0, c_white, .35);
					draw_sprite_ext(sLight, 0, x - _cx - 1288, y - _cy - 1288, 2.42 + random(0.05), 2.42 + random(0.05), 0, c_white, .2);
					break;
		
				case sea_dust_object:
					//draw_self();
					draw_sprite_ext(sea_dust_sprite, 0, x - _cx, y - _cy, 1.1, 1.1, 0, c_white, .10);
					break;
		
				case weak_point_object:
					if (active) { 
						draw_sprite_ext(sLightt, 0, x - _cx, y - _cy, 0.672, 0.672, 0, c_white, .8);
					}
					break;
		
				case weak_point_object_big:
					if (active) {
						draw_sprite_ext(sLightt, 0, x - _cx, y - _cy, 1.025, 1.025, 0, c_white, .8);
					}
					break; 
				case weakpoint_interior:
					if (active) {
						var new_scale = image_xscale / 8;
						draw_sprite_ext(sLightt, 0, x - _cx, y - _cy, new_scale, new_scale, 0, c_white, .8);
					}
					break; 
			}
	    }
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surf, _cx, _cy);
}}
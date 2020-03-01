/// @description Insert description here
// You can write your code in this editor

if !surface_exists(surf2)
    {
    var _cw = camera_get_view_width(view_camera[0]);
    var _ch = camera_get_view_height(view_camera[0]);
    surf2 = surface_create(_cw * 2.5, _ch * 2.5);
    surface_set_target(surf2);
    draw_set_colour(standard_color);
    draw_set_alpha(0);
    draw_rectangle(0, 0, _cw * 2.5, _cw * 2.5, false);
	//draw_rectangle(-2000, -2000, 22000, 20000, 0);
    surface_reset_target();
    }	
else
	{
	if (surface_exists(surf2)) {
		var _cw = camera_get_view_width(view_camera[0]);
		var _ch = camera_get_view_height(view_camera[0]);
		var _cx = camera_get_view_x(view_camera[0]);
		var _cy = camera_get_view_y(view_camera[0]);
		surface_set_target(surf2);
		draw_set_color(standard_color);
		draw_set_alpha(standard_alpha);
		draw_rectangle(0, 0, _cw * 2.5, _cw * 2.5, false);
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
		surface_reset_target();
		draw_surface(surf2, _cx, _cy);
	}
}
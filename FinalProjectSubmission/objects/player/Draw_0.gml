/// @description Insert description here
// You can write your code in this editor


var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);
draw_sprite_ext(sLight1, 0, x, y, 1.2 + random(0.05), 1.2 + random(0.05), 0, c_aqua, .35);
draw_sprite_ext(sLight1, 0, x, y, 2.42 + random(0.05), 2.42 + random(0.05), 0, c_aqua, .2);
draw_self();
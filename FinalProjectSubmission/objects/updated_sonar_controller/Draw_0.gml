/// @description Insert description here
// You can write your code in this editor

if (sonar_active = true) {
	draw_alpha += alpha_deccel * 1.5;
	draw_alpha = clamp(draw_alpha,0,1);
	draw_sprite_ext(sonar_map_sprite,0,x,y,xscale,yscale,0,c_white,draw_alpha);
}
else {
	draw_alpha -= alpha_deccel;
	draw_alpha = clamp(draw_alpha,0,1);
	draw_sprite_ext(sonar_map_sprite,0,x,y,xscale,yscale,0,c_white,draw_alpha);
}

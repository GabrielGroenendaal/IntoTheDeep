/// @description Insert description here
// You can write your code in this editor

draw_rotation += random_range(0.5,1.5);
draw_alpha -= draw_alpha_speed;
speed *= .97;
if (draw_alpha <= 0) {
	instance_destroy();
}
yvel = sin(bop + bobbing_variable) * bobbing_variable2;

y += yvel;
yvel *= drag;

bop += .04;

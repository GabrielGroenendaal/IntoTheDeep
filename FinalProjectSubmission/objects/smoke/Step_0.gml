/// @description Insert description here
// You can write your code in this editor

image_xscale += expansion_speed;
image_yscale += expansion_speed;
image_alpha -= alpha_speed;

//x += xvel;
//y += yvel;
/*if (player_obj.supercharge = true) {
	image_index = 1;
} else { image_index = 0; }*/
x += xvel * drag;
y += yvel * drag;


if (image_alpha <= 0) {
	instance_destroy();
}


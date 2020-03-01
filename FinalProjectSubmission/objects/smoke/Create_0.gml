/// @description Insert description here
// You can write your code in this editor

//xvel = -global.player_obj.xvel;
//yvel = -global.player_obj.yvel + 2;

/*if (player_obj.supercharge = true) {
	image_index = 1;
} else { image_index = 0; } */

player_obj = instance_find(player,0);
angle_y = player_obj.image_angle + 180 + random_range(-90,90);

xvel = cos(degtorad(angle_y)) * 2;
yvel = -1 * sin(degtorad(angle_y)) * 2;

expansion_speed = random_range(.06,.1); 
drag = .95;
alpha_speed = random_range(.015,.03);
//rotation_speed = 5;
image_xscale = random_range(.3,.5);
image_yscale = image_xscale;

//timer = 6;
xvel += cos(degtorad(player_obj.image_angle + 180)) * random_range(-5,5);
yvel += -1 * sin(degtorad(player_obj.image_angle + 180)) *random_range(-5,5);

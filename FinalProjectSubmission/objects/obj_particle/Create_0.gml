/// @description Insert description here
// You can write your code in this editor

player_obj = instance_find(player,0);
game_obj = instance_find(game_controller,0);

// SETTABLE VARIABLES
draw_color = 0;
scale = 1;

// OBJECT VARIABLES
duration = 110;
draw_speed = player_obj.speed_n * 2;


draw_direction = player_obj.image_angle;
direction = random_range(draw_direction - 75, draw_direction + 75); //this points the particle in a random direction.
speed = random_range(draw_speed,draw_speed + 5); //this is how fast the particles will move
alarm[0] = random_range(duration,duration+20); //this will determine how long a particle exists before destroying it
motion_set(direction,speed); //this tells the particle to start moving

bobbing_variable = random_range(1,10); 
bobbing_variable2 = random_range(2,3);
yvel = 0;
drag = .95;

bop = 0;

// CHANGING VARIABLES
draw_alpha = 1;
draw_alpha_speed = 0;
draw_rotation = 0;

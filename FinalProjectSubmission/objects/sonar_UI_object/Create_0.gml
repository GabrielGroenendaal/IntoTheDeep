/// @description Insert description here
// You can write your code in this editor


player_obj = instance_find(player,0);
game_obj = instance_find(game_controller,0);
sonar_contr = instance_find(updated_sonar_controller,0);
monster = 0;

alpha_deccel = .008;
draw_alpha = 0;
sprite_draw = 0;
draw_color = 0;

xscale = 3;
yscale = 3;
alpha = .5;
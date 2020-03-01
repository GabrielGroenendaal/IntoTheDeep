/// @description Insert description here
// You can write your code in this editor

player_obj = instance_find(player,0);
game_obj = instance_find(game_controller,0);

text_alpha = 0;
alpha_speed = 1.0 / (game_obj.trans_speed * room_speed);

game_depth = room * -1000 - 5000;
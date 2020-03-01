/// @description Insert description here
// You can write your code in this editor

player_obj = instance_find(player,0);
game_obj = instance_find(game_controller,0);

image_alpha = random_range(.35,.6);


//displacement = .4;
bobbing_variable = random_range(1,10); 
bobbing_variable2 = random_range(.2,.5);

xvel = 0;
yvel = 0;
drag = .98;

bop = 0;
bop_speed = random_range(.01,.03);
movewrap = false;

if (instance_exists(player)){
	movewrap = true;
}
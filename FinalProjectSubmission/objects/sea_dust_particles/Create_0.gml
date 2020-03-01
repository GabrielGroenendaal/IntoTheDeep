/// @description Insert description here
// You can write your code in this editor

player_obj = instance_find(player,0);
game_obj = instance_find(game_controller,0);

factor = 200;


if (instance_exists(player)){
	for (var i = 0; i < 6000; i += factor) {
		for (var k = 0; k < 6000; k += factor) {
			instance_create_depth(random_range(player_obj.x + i - 3000,player_obj.x + i+factor - 3000), random_range(player_obj.y + k - 2000,player_obj.y + k+factor - 2000), 100, sea_dust_object);
			//instance_create_depth(random_range(i - 2000,i+factor - 2000), random_range(k - 2000,k+factor - 2000), 100, sea_dust_object);
		}
	}
}
else {
	for (var i = 0; i < 14000; i += factor) {
		for (var k = 0; k < 14000; k += factor) {

			instance_create_depth(random_range(i - 2000,i+factor - 2000), random_range(k - 2000,k+factor - 2000), 100, sea_dust_object);
		}
	}
}
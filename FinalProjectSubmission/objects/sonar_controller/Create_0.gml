/// @description Insert description here
// You can write your code in this editor

// Find all the monsters and populate an array with them

player_obj = instance_find(player,0);
game_obj = instance_find(game_controller,0);

sonar_timer = 0;
sonar_duration = 2.5;
sonar_active = false;

monsters = 0;
var monster1 = instance_number(monster_object);
var monster2 = instance_number(monster_object_2);

for (var i = 0; i < monster1; i++) { monsters[i] = instance_find(monster_object,i); }
for (var k = 0; k < monster2; k++) { monsters[i + k] = instance_find(monster_object_2,k); }

for (var j = 0; j < array_length_1d(monsters); j++) {
	var new_sonar = instance_create_depth(x,y,0,sonar_object);
	new_sonar.monster = monsters[j];
}

sonar_timer = 0;
sonar_duration = 2.5;
sonar_active = false;

s_emit = audio_emitter_create();
audio_emitter_gain(s_emit,.3);


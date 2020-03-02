/// @description Insert description here
// You can write your code in this editor

// global variables
player_obj = instance_find(player,0);
game_obj = id;

// score tracking
total_score = 0;
level_score = 0;
level_timer = 0;
level_current = 0;

// state tracking
victory = false;
game_over_timer = 1.5 * room_speed;
trans_start = false;
trans_speed = 1.0;

// ambient sound
s_emit = audio_emitter_create();
audio_play_sound_on(s_emit, water, true, 1);
audio_emitter_gain(s_emit,1);
audio_emitter_pitch(s_emit, .4);

e_emit = audio_emitter_create();
audio_play_sound_on(e_emit, music, true, 1);
audio_emitter_gain(e_emit,.9);
audio_emitter_pitch(e_emit,1);

// map #1
if (room = 1) {
	level_score = 1;
	level_timer = 45 * room_speed;
	level_current = level_timer;
}
// map #2
else if (room = 2) {
	level_score = 3;
	level_timer = 45 * room_speed;
	level_current = level_timer;
}

// map #3
else if (room = 3) {
	level_score = 6;
	level_timer = 45 * room_speed;
	level_current = level_timer;
}

else if (room = 4) {
	level_score = 7;
	level_timer = 60 * room_speed;
	level_current = level_timer;
}


// main menu
if (room = 0) {
	instance_create_depth(0,0,0,ui_controller);
	instance_create_depth(0,0,100,sea_dust_particles);
} else {
	instance_create_depth(0,0,0,oLight);
	instance_create_depth(0,0,100,sea_dust_particles);
	instance_create_depth(0,0,200,fuel_tracker);
	instance_create_depth(0,0,200,updated_sonar_controller);
	instance_create_depth(0,0,0,ui_controller);
	instance_create_depth(0,0,300,background_controller);
}

// fade in
fadeIn();


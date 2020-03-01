/// @description Insert description here
// You can write your code in this editor

standard_alpha += alpha_speed;

if (change_room){
	if (standard_alpha >= 1) {
		if (end_room = room) {
			restart();
		} else {
			audio_stop_all();
			room_goto_next();	
		}
	}
} else {
	if (standard_alpha <= 0) {
		instance_destroy(id);
	}
}
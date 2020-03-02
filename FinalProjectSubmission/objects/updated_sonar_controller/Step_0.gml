/// @description Insert description here
// You can write your code in this editor

if (sonar_duration <= 0) {
	sonar_active = false;
}
sonar_duration--;

if (sonar_timer <= 0 && game_obj.victory = false) {
	if (keyboard_check(vk_space)) {
		sonar_active = true;
		sonar_duration = 3.5 * room_speed;
		sonar_timer = 1.0 * room_speed;
		audio_play_sound_on(s_emit, sonar, false, 1);
	}
} else {
	sonar_timer--;
}

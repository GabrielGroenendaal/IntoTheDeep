/// @description Insert description here
// You can write your code in this editor

if (sonar_duration <= 0) {
	sonar_active = false;
}
sonar_duration--;

if (sonar_timer <= 0 && game_obj.victory = false) {
	if (keyboard_check(vk_space)) {
		sonar_active = true;
		sonar_duration = 1.5 * room_speed;
		sonar_timer = 1.0 * room_speed;
		audio_play_sound_on(s_emit, sonar, false, 1);
	}
} else {
	sonar_timer--;
}
var shift_x = player_obj.xvel * 2; // boost_shake_severity;
var shift_y = player_obj.yvel * 2; // boost_shake_severity;
var direction_p = player_obj.image_angle;
var thing_x = cos(degtorad(direction_p)) * 20; // * thing_size;
var thing_y = sin(degtorad(direction_p)) * -20; //* thing_size;
x = player_obj.x + thing_x - shift_x;
y = player_obj.y + thing_y - shift_y;


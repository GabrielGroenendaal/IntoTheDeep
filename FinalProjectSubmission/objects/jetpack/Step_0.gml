/// @descriptionau Insert description here
// You can write your code in this editor

startangle = image_angle; 

var xdelt = (x - xprev) * 1.5;
var ydelt = (y - yprev) * 1.5;
/*
if (global.player_obj.drift_deccel != 1) {
	pitch_max = 2;
	gain_max = 7; 
} else {
	pitch_max = 1.5;
	gain_max = 5;
} */

if (active = true) {
	image_index = 1;
	y += vibration_speed * random_range(-.5,.5); 
	x += vibration_speed * random_range(-.5,.5);
	image_angle += vibration_angle * random_range(-1,1);
	//instance_create_depth(x-14,y,0,smoke);
	for (var i = 0; i < trail_num; i++){
		instance_create_depth(x - ((xdelt / trail_num) * i) - 14, y - ((ydelt / trail_num) * i) - 5, 0, smoke);
		//instance_create_depth(x - ((xdelt / trail_num) * i) - 14, y - ((ydelt / trail_num) * i) - 5, 0, smoke);
		//instance_create_depth(x - ((xdelt / trail_num) * i) - 14, y - ((ydelt / trail_num) * i) - 5, 0, smoke);
	} 
	gain += gain_accel;
	gain = clamp(gain,0,gain_max); 
	audio_emitter_gain(s_emit,gain);
	
	pitch += pitch_accel;
	pitch = clamp(pitch,1,pitch_max);
	audio_emitter_pitch(s_emit, pitch);
	
} else {
	image_index = 0;
	gain -= gain / 20;
	gain = clamp(gain,0,gain_max);
	audio_emitter_gain(s_emit,gain);
	pitch -= pitch_accel * 3;
	pitch = clamp(pitch,1,pitch_max);
	audio_emitter_pitch(s_emit, pitch);
}

xprev = x;
yprev = y;
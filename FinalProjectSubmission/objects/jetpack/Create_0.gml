/// @description Insert description here
// You can write your code in this editor

active = false;
vibration_speed = 5;
vibration_angle = 5;
xprev = x;
yprev = y;
trail_num = 5;
startangle = image_angle;

gain = 0;
gain_accel = .004;
gain_max = .7;

pitch = 1;
pitch_accel = .0001;
pitch_max = 1.1;

s_emit = audio_emitter_create();
audio_emitter_gain(s_emit,gain);
audio_play_sound_on(s_emit, bubble_sound, true, 1);
audio_emitter_pitch(s_emit, pitch);
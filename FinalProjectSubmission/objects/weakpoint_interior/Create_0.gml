/// @description Insert description here
// You can write your code in this editor


parent = 0;
active = true;

gain = 1;
pitch = 1;

s_emit = audio_emitter_create();
audio_emitter_gain(s_emit,gain);
audio_emitter_pitch(s_emit, pitch);
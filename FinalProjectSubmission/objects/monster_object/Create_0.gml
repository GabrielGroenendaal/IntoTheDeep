/// @description Insert description here
// You can write your code in this editor

player_obj = instance_find(player,0);
game_obj = instance_find(game_controller,0);

image_xscale = 16;
image_yscale = 16;
image_angle += random_range(0,360);

store_angle = image_angle;
rotation_speed = .1 * random_range(.9,1.1);

weakpoint_a = instance_create_depth(x, y, 100, weakpoint_exterior);
weakpoint_a.image_xscale = image_xscale * 1.05;
weakpoint_a.image_yscale = image_yscale * 1.05;
weakpoint_a.sprite_index = angle_225;
weakpoint_a.image_alpha = .8;
weakpoint_a.parent = id;

weakpoint_b = instance_create_depth(x, y, 95, weakpoint_interior);
weakpoint_b.sprite_index = weak_point_interior_sprite;
weakpoint_b.image_xscale = image_xscale * 1.3;
weakpoint_b.image_yscale = image_yscale * 1.3;
weakpoint_b.parent = id;

children = [weakpoint_a, weakpoint_b];

active = true;
monster_health = 100;
exploded = false;


//
bobbing_variable = random_range(1,10); 
bobbing_variable2 = random_range(1.5,2.1);
yvel = 0;
drag = .95;
bop = 0;

// sound

gain = 0;
pitch = random_range(.5,1.2);

s_emit = audio_emitter_create();
audio_emitter_gain(s_emit,gain);
audio_play_sound_on(s_emit, wailing, true, 1);
audio_emitter_pitch(s_emit, pitch);
// transition
// the purpose of this code is to transition between "scenes" or rooms

var fade = instance_create_depth(0,0,0,transition_surface);
fade.standard_alpha = 1;
fade.alpha_speed *= -1;
fade.change_room = false;

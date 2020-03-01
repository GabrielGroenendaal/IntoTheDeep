// transition(bool,int)
// the purpose of this code is to transition between "scenes" or rooms

var fading = argument0;
var new_room = argument1;
var ui = instance_find(ui_controller,0);
if (!fading) {
	if (game_obj.trans_start = false) {
		var fade = instance_create_depth(0,0,0,transition_surface);
		fade.standard_alpha = 0;
		fade.end_room = new_room;
		fade.change_room = true;
		ui.alpha_speed *= -1;
		game_obj.trans_start = true;
		
	}
}
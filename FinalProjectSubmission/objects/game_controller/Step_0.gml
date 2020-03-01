/// @description Insert description here
// You can write your code in this editor

input_game_control();


if (total_score = level_score) {
	victory = true;
}

if (victory = false) { level_current--; }
level_current = clamp(level_current,-1,level_timer);
if (room != 0) {
	if (game_obj.level_timer <= 0) {
		game_over_timer--;
		if (game_over_timer <= 0) {
			transition(false,room);
		}
	}
}
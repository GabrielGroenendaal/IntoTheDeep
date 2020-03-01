// Draws the fuel bar with a volume percentage equal to the timer.

if (room != 0) {
	percent = game_obj.level_current / game_obj.level_timer;
	draw_sprite_ext(fuel_object, 0, position_x, position_y, percent, 1, rotation_angle, new_blue, 1);
	draw_sprite_ext(fuel_item, 0, position_x, position_y, 1, 1, rotation_angle, c_white, 1);
}





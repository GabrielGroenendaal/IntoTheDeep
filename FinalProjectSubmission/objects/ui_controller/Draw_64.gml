// DRAWING THE FPS
if (room!=0) {
	draw_set_color(c_aqua);
	draw_set_font(-1);
	draw_set_halign(fa_left);
	draw_text_transformed(40,20,"DEPTH: " + string(game_depth) + "m", 2.5, 2.5, 0);

	// DRAWING THE PLAYER SCORE
	draw_set_halign(fa_right);
	draw_text_transformed(1560,20,"SCORE: " + string(game_obj.total_score) + " / " + string(game_obj.level_score), 2.5, 2.5,text_alpha);
}

// DRAWING THE PLAYER STATE
if (room = 0) { 
	draw_sprite_ext(title_text,0,800,600,6.0,6.0,0,c_white,text_alpha);	
} else {
	if (game_obj.level_current <= 0) {
		//draw_set_color(c_red);
		draw_sprite_ext(gameover_text, 0, 800,600, 6.0,6.0,0,c_white,text_alpha);
	}

	if (game_obj.victory) {
		//draw_set_color(c_white);
		draw_sprite_ext(victory_text, 0, 800,600, 6.0,6.0,0,c_white,text_alpha);
	}
}

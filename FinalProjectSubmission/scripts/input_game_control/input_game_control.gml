// input_game_control

// this script is designed to work with the gamecontroller

if (keyboard_check(vk_backspace) or keyboard_check(ord("R"))) {
	transition(false,room);
}

if (keyboard_check_pressed(vk_tab))
   {
   if window_get_fullscreen()
      {
      window_set_fullscreen(false);
      }
   else
      {
      window_set_fullscreen(true);
      }
}

if (victory or room = 0) {
	if (keyboard_check(vk_space) or keyboard_check(vk_enter)) {
		transition(false,room_next(room));
	}
}

if (keyboard_check(vk_escape)) {
	transition(false,0);
}
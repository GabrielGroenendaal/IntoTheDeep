/// @description Insert description here
// You can write your code in this editor


if (game_obj.level_current > 0) {
	if (other.active) {
			invincible_timer = .1 * room_speed;
			screen_shake(1.0,40);
			game_obj.total_score++;
			with other {
				parent.monster_health = 0;
				audio_play_sound_on(s_emit, impact, false, 1);
			}
		}
	}

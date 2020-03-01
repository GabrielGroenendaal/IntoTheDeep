/// @description Insert description here
// You can write your code in this editor


if (game_obj.level_current > 0) {
	if (other.active) {
		if (speed_n >= speed_req) {
			invincible_timer = .4 * room_speed;
			//other.parent.monster_health -= damage;
			screen_shake(.2,15);
		} else {
			xvel *= -.5;
			yvel *= -.5;
			angle *= 5;
		}
	}
}
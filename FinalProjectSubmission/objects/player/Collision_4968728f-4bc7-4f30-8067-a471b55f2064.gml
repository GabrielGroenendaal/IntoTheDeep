/// @description Insert description here
// You can write your code in this edit

if (game_obj.level_current > 0) {
	if (other.active) {
		
		if (particle_timer <= 0) {
			explode(other.sprite_index,4,2,c_red);
			particle_timer = .1 * room_speed;
		}
			
		if (invincible_timer > 0) {
			with other {
				store_angle -= rotation_speed;
				rotation_objects(weakpoint_a, 0, 0, store_angle);
				rotation_objects(weakpoint_b, 0, 0, store_angle);
			}	
		} else {
			screen_shake(1,15);
			xvel *= -.9;
			yvel *= -.9;
			angle += random_range(-1,1);
			angle *= 20;
			//game_obj.level_current = 0;
		}
	}


} 


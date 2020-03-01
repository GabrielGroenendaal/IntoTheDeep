// collision_action

var obj_hit = argument0;

if (obj_hit = weakpoint_exterior) {
	if (game_obj.level_current > 0) {
		if (obj_hit.active) {
			if (speed_n > 10) {
				invincible_timer = .4 * room_speed;
				//other.parent.monster_health -= damage;
				screen_shake(.2,15);
			} else {
				game_obj.level_current = 0;
			}
		}
	}
}

else if (obj_hit = weakpoint_interior) {
	if (game_obj.level_current > 0) {
		if (obj_hit.active) {
			if (speed_n > 10) {
				invincible_timer = .1 * room_speed;
				screen_shake(1.0,40);
				obj_hit.parent.monster_health = 0;
			} else {
				game_obj.level_current = 0;
			}
		}
	}
}

else if (obj_hit = monster_object) {
	if (game_obj.level_current > 0) {
		if (obj_hit.active) {
		
			if (particle_timer <= 0) {
				explode(obj_hit.sprite_index,4,2,c_red);
				particle_timer = .1 * room_speed;
			}
			
			if (invincible_timer > 0) {
				with obj_hit {
					store_angle -= rotation_speed;
					rotation_objects(weakpoint_a, 0, 0, store_angle);
					rotation_objects(weakpoint_b, 0, 0, store_angle);
				}	
			} else {
				screen_shake(1,50);
				game_obj.level_current = 0;
			}
		}
	} 
}

else if (obj_hit = monster_object_2) {
	if (game_obj.level_current > 0) {
		if (obj_hit.active) {
		
			if (particle_timer <= 0) {
				explode(obj_hit.sprite_index,4,2,c_red);
				particle_timer = .1 * room_speed;
			}
		
			if (invincible_timer > 0) {
				with obj_hit {
					image_angle -= rotation_speed;
					rotation_objects(weakpoint_a, 0, 0, image_angle);
					rotation_objects(weakpoint_b, 0, 0, image_angle);
				}
			} else {
				screen_shake(1,50);
				game_obj.level_current = 0;
			}
		}
	} 
}
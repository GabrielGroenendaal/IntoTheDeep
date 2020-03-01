// STEP

 // resetting variables
force = 0;  
right_angle_fluctuation = sin(bop) / 16;
yprev = y;
xprev = x;

// movement
if (game_obj.level_current > 0) {
	camera_control();
	input_player_control();
	bop += 1;
	invincible_timer--;
	particle_timer--;
	gain -= .05;
} else { 
	jetpack_left.active = false; 
	jetpack_right.active = false; 
	xvel -= xvel / 12;
	if (yvel < 0) {
		yvel -= yvel / 12;
	}
}

apply_movement();
wing_adjust();

// variables
speed_prev = speed_n;
speed_n = point_distance(0,0,xvel,yvel);
speed_delta = speed_n - speed_prev;

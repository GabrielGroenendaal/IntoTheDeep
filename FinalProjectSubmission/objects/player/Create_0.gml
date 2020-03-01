// CREATE

//gamepad_set_button_threshold(0, .01);
game_obj = instance_find(game_controller,0);

// viewport
zoom_level = 1;
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
camera_set_view_size(view_camera[0], view_w * 1.2, view_h * 1.2);
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);

// stores the velocity to apply each frame
xvel = 0; 
yvel = 0; 
xprev = x;
yprev = y;

// variables that manage velocity and acceleration 
move_drag = .985;
grav = 1;
xmax = 50;
ymax = 50;

// variables that manage speed from jetpack
force = 0;
thrust_accel = .0008;
thrust_min = 0.45;
thrust_max = .88;

// variables that manage angle change from jetpack
angle = 0;
angle_maxspeed = 6;
angle_accel = .004;
angle_min = .08;
angle_max = .25;
angle_drag = .994;

// set starting variables
thrust_right = 0; thrust_left = 0; angle_right = 0; angle_left = 0;

// sin variable
right_angle_fluctuation = 0;

// creating jetpack
jetpack_right = instance_create_depth(x - 50, y, depth, jetpack);
jetpack_left = instance_create_depth(x - 50, y, depth, jetpack);

// state tracking
invincible_timer = 0;

// camera 
screenshake_duration = 0;
screenshake_severity = 1.0;

// zooming
speed_n = 0;
speed_prev = 0;
speed_delta = 0;
speed_req = 25;

// other timers
particle_timer = 0;
bop = 0.0;

// screen shake
boosted = false;
boost_shake_severity = 0;
boost_shake_deccel = 1.5;
boost_shake_min = 0; 
boost_shake_max = 12;

// global 

gain = .25; 
pitch = 1;

s_emit = audio_emitter_create();
audio_emitter_gain(s_emit,gain);
audio_emitter_pitch(s_emit, pitch);
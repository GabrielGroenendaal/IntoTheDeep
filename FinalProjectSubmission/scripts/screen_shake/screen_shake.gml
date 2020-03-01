// screen_shake(duration, severity)

var duration = argument0;
var severity = argument1;

screenshake_duration = duration * room_speed;
screenshake_severity = severity;
/*
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
view_w += random_range(-severity, severity);
view_h += random_range(-severity, severity);
camera_set_view_pos(view_camera[0],view_w, view_h);
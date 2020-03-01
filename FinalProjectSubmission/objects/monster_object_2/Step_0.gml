/// @description Insert description here
// You can write your code in this editor


image_angle += rotation_speed;

rotation_objects(weakpoint_a, 0, 0, image_angle);
rotation_objects(weakpoint_b, 0, 0, image_angle);

if (monster_health <= 0) {
	if (exploded = false) {
		destroy_all_children();
		exploded = true;
	}
}
yvel = sin(bop + bobbing_variable) * bobbing_variable2;
y += yvel;
yvel *= drag;

bop += .04;

var pdistance = point_distance(x,y,player_obj.x,player_obj.y);

if (pdistance < 5000) { 
	gain = (5000 - pdistance) / 5000;
} else {
	gain -= .001;
}
audio_emitter_gain(s_emit,gain);


/*
rotation_objects(weakpoint_a, widdth, 0, image_angle);
rotation_objects(weakpoint_b, -widdth, 0, image_angle);
rotation_objects(weakpoint_c, 0, widdth, image_angle);
rotation_objects(weakpoint_d, 0, -widdth, image_angle);

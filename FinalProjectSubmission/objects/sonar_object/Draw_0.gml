/// @descrition Insert description here
// You can write your code in this editor

var offset = 500;
//var distance = point_distance(player_obj.x,player_obj.y,monster.x,monster.y);
var direction_p = point_direction(player_obj.x,player_obj.y,monster.x,monster.y);
//var thing_size = distance / 4000;


var flange = direction_p + 180;
if (object_get_name(monster.object_index) == "monster_object") {
	sprite_draw = sonar_225;
	
	if (flange > -45 + monster.image_angle and flange < 90 + monster.image_angle) {
		draw_color = c_red;
	} else {
		draw_color = c_white;
	}
} else {
	sprite_draw = find_enemy;	
	draw_color = c_white;
}

if (sonar_contr.sonar_active = true) {
	if (monster.active) {
		draw_alpha += alpha_deccel * 3;
		draw_alpha = clamp(draw_alpha,0,1);
		var thing_x = cos(degtorad(direction_p)) * offset;// * thing_size;
		var thing_y = sin(degtorad(direction_p)) * -offset;// * thing_size;
		//thing_size = clamp(thing_size, .4,2.0);
		thing_size = 2;
		draw_sprite_ext(sprite_draw,0,player_obj.x + 24 + thing_x, player_obj.y + 16 + thing_y, thing_size,thing_size,monster.image_angle,draw_color,draw_alpha);
	}
	else {
		draw_alpha -= alpha_deccel;
		draw_alpha = clamp(draw_alpha,0,1);
		var thing_x = cos(degtorad(direction_p)) * offset; // * thing_size;
		var thing_y = sin(degtorad(direction_p)) * -offset; //* thing_size;
		//thing_size = clamp(thing_size,0,2.0);
		thing_size = 2;
		draw_sprite_ext(sprite_draw,0,player_obj.x + 24 + thing_x, player_obj.y + 16 + thing_y, thing_size,thing_size,monster.image_angle,draw_color,draw_alpha);
			
	}
}
else {
	draw_alpha -= alpha_deccel;
	draw_alpha = clamp(draw_alpha,0,1);

	if (monster.active) {
		var thing_x = cos(degtorad(direction_p)) * offset; // * thing_size;
		var thing_y = sin(degtorad(direction_p)) * -offset; //* thing_size;
		//thing_size = clamp(thing_size,0,2.0);
		thing_size = 1.5;
		draw_sprite_ext(sprite_draw,0,player_obj.x + 24 + thing_x, player_obj.y + 16 + thing_y, thing_size,thing_size,monster.image_angle,draw_color,draw_alpha);
	}		
}
/// @description Insert description here
// You can write your code in this editor

var offset = 500;
var distance = point_distance(player_obj.x,player_obj.y,monster.x,monster.y);
var direction_p = point_direction(player_obj.x,player_obj.y,monster.x,monster.y);
//var thing_size = distance / 4000;

sprite_draw = sonar_icon_sprite;	
var flange = direction_p + 180;
if (object_get_name(monster.object_index) == "monster_object") {
	sprite_draw = sonar_icon_sprite;
	
	if (flange > -45 + monster.image_angle and flange < 90 + monster.image_angle) {
		draw_color = c_red;
	} else {
		draw_color = c_white;
	}
} else {
	sprite_draw = sonar_icon_sprite;	
	draw_color = c_white;
}

sprite_draw = weak_point_sprite;	

if (sonar_contr.sonar_active = true) {
	
		
	offset = distance / 10;
	if (monster.active) {
		draw_alpha += alpha_deccel * 1.5;
		draw_alpha = clamp(draw_alpha,0,1);

		var thing_x = clamp( ( sonar_contr.x + cos(degtorad(direction_p)) * offset) , sonar_contr.x - 300, sonar_contr.x + 300); // * thing_size;
		var thing_y = clamp ( ( sonar_contr.y + sin(degtorad(direction_p)) * -offset) , sonar_contr.y - 300, sonar_contr.y + 300); //* thing_size;
		draw_sprite_ext(sprite_draw,0,thing_x, thing_y, xscale,yscale,monster.image_angle,draw_color,draw_alpha);
		show_debug_message(thing_x);
	}
	else {
		draw_alpha -= alpha_deccel;
		draw_alpha = clamp(draw_alpha,0,1);

		var thing_x = clamp( ( sonar_contr.x + cos(degtorad(direction_p)) * offset) , sonar_contr.x - 300, sonar_contr.x + 300); // * thing_size;
		var thing_y = clamp ( ( sonar_contr.y + sin(degtorad(direction_p)) * -offset) , sonar_contr.y - 300, sonar_contr.y + 300); //* thing_size;
		//thing_size = clamp(thing_size,0,2.0);
		draw_sprite_ext(sprite_draw,0,thing_x, thing_y, xscale,yscale,monster.image_angle,draw_color,draw_alpha);
		show_debug_message(thing_x);
		}
	
}
else {
	offset = distance / 10;
	draw_alpha -= alpha_deccel;
	draw_alpha = clamp(draw_alpha,0,1);

	if (monster.active) {
		var thing_x = clamp( ( sonar_contr.x + cos(degtorad(direction_p)) * offset) , sonar_contr.x - 300, sonar_contr.x + 300); // * thing_size;
		var thing_y = clamp ( ( sonar_contr.y + sin(degtorad(direction_p)) * -offset) , sonar_contr.y - 300, sonar_contr.y + 300); //* thing_size;
		//thing_size = clamp(thing_size,0,2.0);
		draw_sprite_ext(sprite_draw,0,thing_x, thing_y, xscale,yscale,monster.image_angle,draw_color,draw_alpha);
	}		
}
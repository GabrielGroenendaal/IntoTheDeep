/// @description Insert description here
// You can write your code in this editor

//image_angle += rotation_speed;

y += sin(bop + bobbing_variable) * bobbing_variable2;

//r pangle = global.player_obj.image_angle;



if (room != 0) {

		var away = player_obj.image_angle + 180;
		x += cos(degtorad(away)) * player_obj.speed_n / 3;
		y -= sin(degtorad(away)) * player_obj.speed_n / 3;
	
	if (point_distance(x,y,player_obj.x,player_obj.y) <= 550) {
	
		var away = point_direction(x,y,player_obj.x,player_obj.y) + 180;
		xvel += cos(degtorad(away)) * player_obj.speed_n / 300;
		yvel -= sin(degtorad(away)) * player_obj.speed_n / 300;
	}
}

y += yvel;
x += xvel;

xvel *= drag;
yvel *= drag;

bop += bop_speed;

if (movewrap) { 
	if (x > player_obj.x + 3000) {
		x -= 6000;	
	}
	if (x < player_obj.x - 3000) {
		x += 6000;	
	}
	if (y > player_obj.y + 3000) {
		y -= 6000;	
	}
	if (y < player_obj.y - 3000) {
		y += 6000;	
	}
}
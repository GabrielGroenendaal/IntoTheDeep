// destroy_all_children()
var new_color = make_color_rgb(61,3,3);
//var new_color = make_color_rgb(30,185,185);

for (var i = 0; i < array_length_1d(children); i++) {
	children[i].image_alpha = 0;
	children[i].active = false;
	with children[i] {
		explode(sprite_index, 4, image_xscale, new_color);	
	}
}

image_alpha = 0;
explode(sprite_index, 4, image_xscale, new_color);	
active = false;

/*var parent = argument0;
var children = parent.children;

for (var i = 0; i < array_length_1d(children); i++) {
	children[i].image_alpha = 0;
	children[i].active = false;
}

parent.image_alpha = 0;
parent.active = false;
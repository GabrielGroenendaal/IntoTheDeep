// explode(sprite,chunk,scale,color)
var n = argument0;
var chunk = argument1 * 2;
var new_scale = argument2;
var new_color = argument3;


var ww = sprite_get_width(n); //we need to know how wide
var hh = sprite_get_height(n); //and how tall our sprite is

for (i=0;i<ww;i+=chunk) { //we loop 4 pixel at a time all the way across
 for (j=0;j<hh;j+=chunk) { //while picking all the vertical pixels in each column
		particle = instance_create_depth(x+i,y+j,100,obj_particle); //we create a particle relative to the object, offset by the proper amount
		particle.spr = n; //we need to tell the particle which sprite to draw. in this case, it's drawing the sprite of the object that's creating it
		particle.size = chunk;
		particle.xx = i; //we'll need the particles to have these values so they can draw the right part of the sprite
		particle.yy = j;
		particle.scale = new_scale;
		particle.draw_color = new_color;
	}
 }


// rotation_objects(child,x0,y0,newangle)

var child = argument0;
var x0 = argument1;
var y0 = argument2;
var newangle = argument3;

child.image_angle = newangle;


var c = dcos(newangle);
var s = dsin(newangle);

child.x = x + x0 * c + y0 * s;
child.y = y - x0 * s + y0 * c;
// find_line(x1,x2,y1,y2,x3,y3)

var x1 = argument0;
var x2 = argument1;
var y1 = argument2;
var y2 = argument3;
var x3 = argument4;
var y3 = argument5;

var slope = (y2 - y1) / (x2 - x1);
var intercept = (slope * x1) - y1 * -1;

// y = slope * x + intercept

if (y3 >= (slope * x3) + intercept) {
	return true;
} else {
	return false;
}
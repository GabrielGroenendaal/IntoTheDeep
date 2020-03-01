var p1x = argument0;
var p1y = argument1;
var p2x = argument2;
var p2y = argument3;

var d = (x-p1x) * (p2y-p1y) - (y-p1y)*(p2x-p1x);
return d > 0;
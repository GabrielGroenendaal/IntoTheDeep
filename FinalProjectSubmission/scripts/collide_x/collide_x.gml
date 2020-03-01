// collide_x(layer,xvel)

var layer_to_check = argument0;
var xvel = argument1;
var dist_to_move = abs(xvel);
for (var i = 0; i < abs(xvel); i++) {
    
    x += sign(xvel) * min(dist_to_move, 1);
    
    if (place_meeting(x, y, layer_to_check)){
        var obj_hit = instance_place(x, y, layer_to_check);
        x -= sign(xvel) * min(dist_to_move, 1);
		//collision_action(obj_hit);
		return obj_hit;
    }
    dist_to_move--;
}
return -1;
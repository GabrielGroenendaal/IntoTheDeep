// collide_y(layer,yvel)

var layer_to_check = argument0;
var yvel = argument1;

var dist_to_move = abs(yvel);

for (var i = 0; i < abs(yvel); i++) {
    y += sign(yvel) * min(1, dist_to_move);
    if (place_meeting(x, y, layer_to_check)){
        var obj_hit = instance_place(x, y, layer_to_check);
        y -= sign(yvel) * min(1, dist_to_move);
		//collision_action(obj_hit);
		return obj_hit;
    }
    dist_to_move--;
}

return -1;
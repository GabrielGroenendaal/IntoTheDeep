// apply_player_movement(coefficient)

// applies the player's xvel and yvel to the indicated object.

var coef = argument0;

x += player_obj.xvel * coef;
y += player_obj.yvel * coef;

move_wrap(true,true,player_obj.sprite_height);
// wing_adjust()
// this simple script adjusts the wings of jetpack depending on the player's movement


jetpack_right.image_angle = image_angle;
jetpack_left.image_angle = image_angle;
var r_vectx = cos(degtorad(image_angle-90));
var r_vecty = -sin(degtorad(image_angle-90));
jetpack_right.x = x + r_vectx * 24;
jetpack_right.y = y + r_vecty * 24;
jetpack_left.x = x - r_vectx * 24;
jetpack_left.y = y - r_vecty * 24;
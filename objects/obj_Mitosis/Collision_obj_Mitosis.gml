/// @description Bounce off
if( global.Pausado ) exit;
var dir = point_direction(other.x, other.y, x, y);
//add_speed(Friccion_Entre_Entidades, dir);
speed = 0.25;
direction = dir;
move_x += hspeed;
move_y += vspeed;
hspeed = 0;
vspeed = 0;


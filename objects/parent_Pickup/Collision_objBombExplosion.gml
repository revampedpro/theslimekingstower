// Be repelled
var dd = point_direction(other.x, other.y, x, y);
var cs = 4;
hspeed =  cos(degtorad(dd))*cs;
vspeed = -sin(degtorad(dd))*cs;


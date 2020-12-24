// Friction
var dd = point_direction(x, y, other.x, other.y);
var cs = 0.5;
var cx = cos(degtorad(dd))*cs;
var cy = sin(degtorad(dd))*cs;
x -= cx;
y += cy;


// Move
var dir = point_direction(other.x, other.y, x, y);
x += .5 * cos(degtorad(dir));
y -= .5 * sin(degtorad(dir));
// Be repelled
var dd = point_direction(x, y, other.x, other.y) + 180;
var cs = 0.8;
var cx = cos(degtorad(dd))*cs;
var cy = sin(degtorad(dd))*cs;
if(place_free(other.x - cx, other.y)) other.x -= cx;
if(place_free(other.x, other.y + cy)) other.y += cy;


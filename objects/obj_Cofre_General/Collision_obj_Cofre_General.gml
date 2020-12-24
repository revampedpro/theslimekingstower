// Friction
var dd = point_direction(Xstart, Ystart, other.Xstart, other.Ystart);
var cs = 0.5;
var cx = cos(degtorad(dd))*cs;
var cy = sin(degtorad(dd))*cs;
if(place_free(Xstart - cx, Ystart)) Xstart -= cx;
if(place_free(Xstart, Ystart + cy)) Ystart += cy;

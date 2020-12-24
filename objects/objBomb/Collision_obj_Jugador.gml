// Friction
// Moverse en contra del jugador
{
    var dd = point_direction(x, y, other.x, other.y);
    var cs = 0.2;
    var cx = cos(degtorad(dd))*cs;
    var cy = sin(degtorad(dd))*cs;
    if(place_free(x - cx, y)) x -= cx;
    if(place_free(x, y + cy)) y += cy;
}


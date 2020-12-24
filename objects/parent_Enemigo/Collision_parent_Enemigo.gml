/// @description  Unfriendly
if(instance_exists(obj_Jugador)) {
    if(player_has_item(81)) and (alarm[2]<0) {
        HP-=0.5;
        if(HP <= 0) instance_destroy();
        alarm[2] = 4;
    }
}

// Friction
var dd = point_direction(x, y, other.x, other.y);
var cs = 0.5;
var cx = cos(degtorad(dd))*cs;
var cy = sin(degtorad(dd))*cs;
if(place_free(x - cx, y)) x -= cx;
if(place_free(x, y + cy)) y += cy;


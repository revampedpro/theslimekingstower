/// @description Bounce off
if( global.Pausado ) exit;
if( Altura < 2 and other.Altura < 2 ) {
    var dir = point_direction(other.x, other.y, x, y);
    add_speed(Friccion_Entre_Entidades, dir);
}



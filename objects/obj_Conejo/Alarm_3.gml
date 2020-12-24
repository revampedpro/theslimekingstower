var A = point_direction( x, y, Waypoint_X, Waypoint_Y );
if( A > 45  and A < 135 ) {  // Arriba
    sprite_index = Sprite_Up;
}
if( A > 225 and A < 315 ) { // Abajo
    sprite_index = Sprite_Down;
} 
if( A > 135 and A < 225 ) { // Izquierda
    sprite_index = Sprite_Left;
} 
if( A > 315 or  A < 45 )  { // Derecha
    sprite_index = Sprite_Right;
} 
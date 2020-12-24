// Autotile
var l = 0; r = 0; u = 0; d = 0;
l = place_meeting( x - 24, y, obj_Agua );
r = place_meeting( x + 24, y, obj_Agua );
u = place_meeting( x, y - 24, obj_Agua );
d = place_meeting( x, y + 24, obj_Agua );

// Elegir tile
if( l = 1 and r = 1 and u = 1 and d = 1 ) image_index = 0; // Centro

if( l = 1 and r = 1 and u = 0 and d = 1 ) image_index = 1; // Arriba
if( l = 1 and r = 1 and u = 1 and d = 0 ) image_index = 3; // Abajo
if( l = 1 and r = 0 and u = 1 and d = 1 ) image_index = 2; // Derecha
if( l = 0 and r = 1 and u = 1 and d = 1 ) image_index = 4; // Izquierda

if( l = 1 and r = 0 and u = 1 and d = 0 ) image_index = 8; // Arriba-Izquierda
if( l = 0 and r = 1 and u = 1 and d = 0 ) image_index = 7; // Arriba-Derecha
if( l = 1 and r = 0 and u = 0 and d = 1 ) image_index = 6; // Abajo-Izquierda
if( l = 0 and r = 1 and u = 0 and d = 1 ) image_index = 5; // Abajo-Derecha


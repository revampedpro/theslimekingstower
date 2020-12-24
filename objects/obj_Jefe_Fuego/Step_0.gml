// Ir hacia el jugador
if(life >  0) life--;
if(life == 0) instance_destroy();
if(!instance_exists(obj_Jugador))exit;
x += cos(degtorad(Direction)) * Velocidad;
y -= sin(degtorad(Direction)) * Velocidad;
if(alarm[0] > 0)Direction += Velocidad_Direction;


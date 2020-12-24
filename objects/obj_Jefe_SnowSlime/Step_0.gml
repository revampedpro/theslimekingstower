/// @description  Comportamiento
if(instance_exists(fxTransition2))exit;
if(!instance_exists(obj_Jugador)) exit;
if(alarm[3]>0) exit;

// Moverse y chocar
x += Velocidad_H;
y += Velocidad_V;

// Profundidad
depth = -y;

// Increase size
image_xscale += 0.0025;
image_yscale += 0.0025;

/// Morir
if( HP <= 0 ) instance_destroy();


// Buscar objetivo
if(instance_exists(fxTransition2))exit;
if(instance_exists(parent_Enemigo)) {

    Objetivo = instance_nearest(x, y, parent_Enemigo);
    
} else { 

    // Si no hay enemigo busca al jugador
    if(instance_exists(obj_Jugador)) {
        Objetivo = obj_Jugador;
    } else {
        Objetivo = noone;
    }
    
}

if(Objetivo == obj_Jugador) and (network_is_online() and !network_is_host()) {
	Objetivo = instance_nearest(x,y,parent_Jugador);
}

// Profundidad
depth = (-y) - (50); 

// Acelerar hacia el jugador
if(Objetivo != noone) {

    // Girar hacia el objetivo
    var Angulo_2 = point_direction(x, y, Objetivo.x, Objetivo.y);
    Angulo = approach(Angulo, Angulo_2, 10);
    image_angle = Angulo_2;
    
    // Acelerar
    if(distance_to_object(Objetivo) > 24) {
        Velocidad_H += Aceleracion *  cos(degtorad(Angulo_2));
        Velocidad_V += Aceleracion * -sin(degtorad(Angulo_2));
    }
    
} else {

    // Frenar
    Velocidad_H *= 0.9;
    Velocidad_V *= 0.9;

}

// Clampear las velocidades y luego aplicarlas
Velocidad_H = clamp(Velocidad_H, -Velocidad_Max, Velocidad_Max);
Velocidad_V = clamp(Velocidad_V, -Velocidad_Max, Velocidad_Max);
x += Velocidad_H;
y += Velocidad_V;

/// Dañar al enemigo
if( global.Pausado ) exit;
if( ! instance_exists( controlador_Movimiento ) or ! instance_exists( controlador_Disparo ) ) exit;
if(!instance_exists(obj_Jugador))exit;
if(Objetivo == obj_Jugador) or (Objetivo == noone)exit;
if(alarm[0] > 0)exit;
if(Objetivo.object_index == obj_Jefe_GlowSlime and Objetivo.Regenerando == true)exit;

// Disparar
alarm[0] = 60;
//scr_jugador_common_disparo(Angulo_2, 6, sprBulletLaser);
var blt = bullet_spawn(x,y,6,6,Angulo_2,obj_Jugador_Disparo,sprBulletLaser);


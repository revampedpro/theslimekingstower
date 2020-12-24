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
    if(distance_to_object(Objetivo) > 1) {
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
if(alarm[0] > 0)exit;
if( instance_place( x, y, parent_Enemigo ) ) {
    var Enemigo = instance_place( x, y, parent_Enemigo );
    if(Enemigo.Altura > 2) exit;
    
    // Crear efectos
    with(Enemigo) {
        var FX = create_effect(x, y, sprSplat2, 1/3 );
        FX.image_blend = Color_Sangre;
        FX.depth = depth-400;
        repeat(3)
        {
            var v = 6;
            var xx = x+random_range(v, -v);
            var yy = y+random_range(v, -v);
            var sc = random_range(0.25, 0.7);
            
            var in = instance_create(xx,yy,fx_Sprite_Persistent);
            in.image_xscale = sc;
            in.image_yscale = sc;
            in.sprite_index = sprBlood;
            in.image_blend = Color_Sangre;
            in.image_alpha = 0.8;
            
        }
    }
    
    // Daño
    with(Enemigo) {
        HP -= 2;
        other.Velocidad_H = other.Velocidad_Max * -sign(other.Velocidad_H);
        other.Velocidad_V = other.Velocidad_Max * -sign(other.Velocidad_V);
        alarm[2] = 4;
        other.alarm[0] = 30;
    }
    
    // Matar al enemigo
    if(instance_exists(Enemigo)) {
        if(Enemigo.HP <= 0) with(Enemigo) instance_destroy();
    }
    
}


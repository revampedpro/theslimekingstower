/// @description  Cambiar de fase
if( Fase = 0 ) and (( instance_number( parent_Enemigo ) < 2 ) or ( HP < Max_HP/2 )) {
    Fase = 1; 
    move_speed *= 2;
} 

if( Fase = 1 ) and ( HP < Max_HP/4 ) {
    Fase = 2;
    Summoner = 1;
    alarm[4] = 60;
}

// girar
if(instance_exists(obj_Jugador)) {
    if(obj_Jugador.x < x) image_xscale = 1; else image_xscale = -1;
}

/// Morir
if( HP <= 0 ) instance_destroy();


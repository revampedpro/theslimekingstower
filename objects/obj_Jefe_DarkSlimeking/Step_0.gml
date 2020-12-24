/// @description  Cambiar de fase
if(Fase == 0) and ((instance_number(parent_Enemigo) < 2) or (HP < (Max_HP/4)*3)) {
    Fase = 1; 
    move_speed *= 2;
} 

if(Fase == 1) and (HP < (Max_HP/4)*2) {
    Fase = 2;
    Summoner = 1;
    alarm[4] = 60;
}

if(Fase == 2) and (HP < (Max_HP/4)*1) {
    Fase = 3;
    Summoner = false;
    alarm[4] = -1;
    // Summon ghosts
    if(Ghosts == true) {
        HP = 500;
        Ghosts = false;
        repeat(2) spawn_boss(x,y,20);
    }
}

// girar
if(instance_exists(obj_Jugador)) {
    if(obj_Jugador.x < x) image_xscale = 1; else image_xscale = -1;
}

/// Morir
if( HP <= 0 ) instance_destroy();


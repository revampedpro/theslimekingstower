/// @description  Morir
if( HP <= 0 ) instance_destroy();

/// Comportamiento
if(global.Pausado) {speed = 0; exit; }
Objetivo = obj_Jugador;
if(instance_exists(fxTransition2))exit;
if( instance_exists( obj_Dummy ) ) Objetivo = obj_Dummy;
if(alarm[11] > 0 and Altura = 0) exit;
if(!instance_exists(Objetivo)) exit;
if(Waypoint_X != -1 and Waypoint_Y != -1) {
    Velocidad += Aceleracion;
    move_towards_point( Waypoint_X, Waypoint_Y, Velocidad );
    var Pre_Altura = point_distance(Salto_Inicio_X,Salto_Inicio_Y,((Salto_Inicio_X+Waypoint_X)/2),((Salto_Inicio_Y+Waypoint_Y)/2)) - point_distance(x,y,((Salto_Inicio_X+Waypoint_X)/2),((Salto_Inicio_Y+Waypoint_Y)/2));
    Altura = Pre_Altura/2;
} else {
    Altura = 0;
}
if( Altura > 0 ) alarm[0]++;

// Make it visible
if(visible == false) {
    visible = true;
    if(instance_exists(obj_Jugador)) {
        var fx = create_effect(x,y,sprEnemyDeath,0.4);
        fx.depth = depth-60;
        var fx = create_effect(x,y,sprSmokeEnemyAppear,0.4);
        fx.depth = depth-60;
        audio_stop_sound(sndEnemySpawn);
        audio_play_sound(sndEnemySpawn,0,0);
    }
}

// Dejar rastro
if( alarm[1] < 0 ) alarm[1] = 10;

// Dejar de saltar
if(( abs(x-Waypoint_X) + abs(y-Waypoint_Y) ) < 5 ) {
    Waypoint_X = -1;
    Waypoint_Y = -1;
    speed = 0;
    Velocidad = 0;
    xscale = 1.5;
    yscale = 0.5;
    shake_camera(choose(0,1),choose(0,1));
}

// Clamp
Velocidad = clamp(Velocidad, -Velocidad_Max, Velocidad_Max);

// Fuerza de rozamiento
Velocidad *= 0.95;

// Control de sprites
//if( Velocidad_H > 0 ) image_xscale = 1; else image_xscale = -1;


// Profundidad
depth = -y;



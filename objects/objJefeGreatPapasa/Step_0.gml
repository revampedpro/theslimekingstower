/// @description  Comportamiento
if(instance_exists(fxTransition2))exit;
if(alarm[3]>0) exit;
if( global.Pausado ) exit;
if(!instance_exists(obj_Jugador)) exit;
if( Waypoint_X != -1 and Waypoint_Y != -1 ) {
    Velocidad += Aceleracion;
    move_towards_point( Waypoint_X, Waypoint_Y, Velocidad );
    var Pre_Altura = point_distance(Salto_Inicio_X,Salto_Inicio_Y,((Salto_Inicio_X+Waypoint_X)/2),((Salto_Inicio_Y+Waypoint_Y)/2)) - point_distance(x,y,((Salto_Inicio_X+Waypoint_X)/2),((Salto_Inicio_Y+Waypoint_Y)/2));
    Altura = Pre_Altura/2;
} else {
    Altura = 0;
}

// Fire
if(alarm[6]<=15) {
    D += 2;
}
if(alarm[7]>0) D+=1;
if(D > 360) {
    D = 0;
    offset = random(360);
    alarm[6] = 300;
}
if(alarm[6] == 60) {
    for( i = 0; i < 999; i++ ) {
        var X = irandom_range(168,432);
        var Y = irandom_range(96,216);
        if(place_free(X,Y) and point_distance(x,y,obj_Jugador.x,obj_Jugador.y)>16) {
            repeat(8){
                var v = 16;
                var xx = x+random_range(-v, v);
                var yy = y+random_range(-v, v);
                var a = random_range(0.1, 0.4);
                create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
            }
            x = X;
            y = Y;
            audio_play_sound(choose(sndBossGrunt01,sndBossGrunt02,sndBossGrunt03),0,0);
            audio_play_sound(sndUseItem,0,0);
            break;
        }
    }
}
if(alarm[6] < 0) {
    alarm[6] = 15;
}
if(alarm[7] < 0) and (alarm[6] > 100) {
    alarm[7] = 15;
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
    shake_camera(choose(4,5),choose(4,5));
}

// Clamp
Velocidad = clamp(Velocidad, -Velocidad_Max, Velocidad_Max);

// Fuerza de rozamiento
Velocidad *= 0.95;

// Control de sprites
//if( Velocidad_H > 0 ) image_xscale = 1; else image_xscale = -1;


// Profundidad
depth = -y;

/// Morir
if( HP <= 0 ) instance_destroy();


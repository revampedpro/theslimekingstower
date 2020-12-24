action_inherited();
///Move
if( global.Pausado ) exit;
Objetivo = obj_Jugador;
if(network_is_online()) and (Objetivo == obj_Jugador) and (distance_to_object(obj_Jugador_Networking)<distance_to_object(obj_Jugador)) Objetivo = obj_Jugador_Networking;
if( instance_exists( obj_Dummy ) ) Objetivo = obj_Dummy;
if(alarm[11] > 0) { vx = 0; vy = 0; exit; }

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

if (instance_exists(Objetivo))
{
    Teleport--;
    if(Teleport <= 0) {
    
        for( i = 0; i < 999; i++ ) {
            var X = irandom_range(168,432);
            var Y = irandom_range(96,216);
            if(place_free(X,Y) and point_distance(X,Y,Objetivo.x,Objetivo.y)>16) {
                repeat(4){
                    var v = 8;
                    var xx = x+random_range(-v, v);
                    var yy = y+random_range(-v, v);
                    var a = random_range(0.1, 0.4);
                    create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
                }
                x = X;
                y = Y;
                break;
            }
        }
        Teleport = Teleport_Max/2 + random(Teleport_Max)/2;
    
    }
    
    Shoot--;
    if( Shoot <= 0 ) {
        Shoot = Shoot_Max/2 + random(Shoot_Max)/2;
        image_speed = 0.4;
    
    }
}



/// Efecto wiggle del sprite
var k = 0.07;
xscale = approach(xscale, 1, k);
yscale = approach(yscale, 1, k);



///Set sprite
if( global.Pausado ) exit;
ax = abs(move_x);
ay = abs(move_y);
if(!instance_exists(obj_Jugador))exit;

var A = point_direction( x, y, obj_Jugador.x, obj_Jugador.y );

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


action_inherited();
///Move
if( global.Pausado ) exit;
if(instance_exists(fxTransition2))exit;
if(room != room_Title and room != room_Biblioteca and room != room_GameOver and room != room_Modos_Juego and room != room_Opciones and room != room_Ranking) { Objetivo = obj_Jugador; }
if(network_is_online()) and (Objetivo == obj_Jugador) and (distance_to_object(obj_Jugador_Networking)<distance_to_object(obj_Jugador)) Objetivo = obj_Jugador_Networking;
if(instance_exists(obj_Dummy)) Objetivo = obj_Dummy;
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

// Cambiar objetivo si esta en el emnu
if(room == room_Title or room == room_Modos_Juego or room == room_GameOver or room == room_Opciones or room == room_Ranking or room == room_Biblioteca
 or room == room_Pets or room == room_DailyRun_Mode or room == room_Endless_Mode) {
    if(distance_to_object(Objetivo)<10 or !instance_exists(Objetivo)) {
        Objetivo = instance_find(obj_Menu_Nuevo_Fake_Objetivo, irandom(instance_number(obj_Menu_Nuevo_Fake_Objetivo)));
    }
}
/// Efecto wiggle del sprite
var k = 0.07;
xscale = approach(xscale, 1, k);
yscale = approach(yscale, 1, k);

// Don't move
if(ID == 32) {  // <-- Broslime doesn't move
    if(distance_to_object(obj_Jugador) < 64) {
        for( i = 0; i < 999; i++ ) {
            var X = irandom_range(168,432);
            var Y = irandom_range(96,216);
            if(place_free(X,Y) and point_distance(X,Y,obj_Jugador.x,obj_Jugador.y)>16) {
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
    }
    shoot_timer++;
    if(shoot_timer > 180) {
        var Fireball = instance_create(x, y, obj_MageSkeleton_Fireball);
        Fireball.Fuerza = 1;
        Fireball.sprite_index = sprBulletPulse;
        Fireball.image_blend = c_red;
        shoot_timer = 0;
    }
    exit;
}
if(ID == 33) {  // <-- Slimecapone doesn't move
    exit;
}

if (instance_exists(Objetivo))
{
/*
    var dir = point_direction(x, y, Objetivo.x, Objetivo.y);
    move_x = lengthdir_x(1, dir);
    move_y = lengthdir_y(1, dir);
*/
    if(move_x == 0 and move_y == 0) and (abs(hspeed) < 2) and (abs(vspeed) < 2) {
        mp_potential_step(Objetivo.x, Objetivo.y, Velocidad, false);
    } else {
        speed = 0;
    }
}



/* */



/* */
///Set sprite
if( global.Pausado ) exit;
ax =  (cos(degtorad(direction)));
ay = -(sin(degtorad(direction)));

if (abs(ax) > abs(ay))
{
    if (ax > 0)
        sprite_index = Sprite_Right;
    else
        sprite_index = Sprite_Left;
}
else
{
    if (ay > 0)
        sprite_index = Sprite_Down;
    else
        sprite_index = Sprite_Up;
}


/* */
/*  */

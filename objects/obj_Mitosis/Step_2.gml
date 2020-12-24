action_inherited();
/// Efecto wiggle del sprite
var k = 0.07;
xscale = approach(xscale, 1, k);
yscale = approach(yscale, 1, k);



///Move
if(instance_exists(fxTransition2))exit;
Objetivo = obj_Jugador;
if(network_is_online()) and (Objetivo == obj_Jugador) and (distance_to_object(obj_Jugador_Networking)<distance_to_object(obj_Jugador)) Objetivo = obj_Jugador_Networking;
if( instance_exists( obj_Dummy ) ) Objetivo = obj_Dummy;
if(alarm[11] > 0) { vx = 0; vy = 0; exit; }
if (instance_exists(Objetivo))
{
    var dir = point_direction(x, y, Objetivo.x, Objetivo.y);
    move_x = lengthdir_x(1, dir);
    move_y = lengthdir_y(1, dir);
}
if (sprite_index == spr_Mitosis_Small) {
    vx = 0; vy = 0; 
    move_x = 0;
    move_y = 0;
}

// Clamp vars
//x = clamp(x, view_xview[0], view_xview[0]+view_wview[0]);
//y = clamp(y, view_yview[0], view_yview[0]+view_hview[0]);

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

// Crecer
if(Crecer == true) {
    Crecimiento++;
    if(Crecimiento > 240) {
        var Sub = instance_create(x, y, obj_Mitosis);
        Sub.ID = 16;
        with(Sub) event_perform(ev_other, ev_user15);
        instance_destroy();
    }
}


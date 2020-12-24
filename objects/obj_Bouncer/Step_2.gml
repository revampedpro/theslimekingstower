action_inherited();
/// Efecto wiggle del sprite
var k = 0.07;
xscale = approach(xscale, 1, k);
yscale = approach(yscale, 1, k);



///Move
if(instance_exists(fxTransition2))exit;
Objetivo = obj_Jugador;
if( instance_exists( obj_Dummy ) ) Objetivo = obj_Dummy;
if(alarm[11] > 0) { vx = 0; vy = 0; exit; }

// Clamp vars
x += VX;
y += VY;
if(x < 175) VX = -VX;
if(x > 450) VX = -VX;
if(y < 100) VY = -VY;
if(y > 235) VY = -VY;

// Bounce
/*
if(!place_free(x,y)) {
    var Other = instance_place(x,y,parent_Solid);
    x -= VX;
    y -= VY;
    if(Other.object_index != obj_Agua) and (Other.object_index != obj_Void) and (Other.object_index != obj_Bloqueador) and (Other.object_index != obj_Rocas) and (Other.object_index != obj_Skeletons) and (Other.object_index != obj_Vasija) and (Other.object_index != obj_Antorcha) {
        if(!place_free(x+VX,y)) VX = -VX;
        if(!place_free(x,y+VY)) VY = -VY;
    } else {
        x += VX;
        y += VY;
    }
}
*/

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



/* */
/*  */

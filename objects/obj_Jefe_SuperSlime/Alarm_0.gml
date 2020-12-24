/// @description  Tiempo pensar entre saltos
if(!instance_exists(obj_Jugador)) exit;

if(chance(50)) and (instance_number(parent_Enemigo)<9){
    repeat(choose(1,2,3)) {
        enemy_spawn = spawn(x, y, choose(3,4));
        enemy_spawn.no_drops = true;
    }
}

alarm[0] = 100 + random(200); // Tiempo pensar entre saltos
Salto_Inicio_X = x;
Salto_Inicio_Y = y;
Waypoint_X = obj_Jugador.x;
Waypoint_Y = obj_Jugador.y;
Saltar = true;
xscale = 0.5;
yscale = 1.5;
audio_play_sound(choose(sndBossGrunt01,sndBossGrunt02,sndBossGrunt03),0,0);


/// @description  Spawn snakes
alarm[8] = 60;
if(chance(25)) and (instance_number(parent_Enemigo) < 10) {
    enemy_spawn = spawn(x, y, 10);
    enemy_spawn.no_drops = true;
}


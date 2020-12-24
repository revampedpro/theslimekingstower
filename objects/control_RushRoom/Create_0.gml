// Vars
spawned = false;
boss_can_spawn = false;

// Boss can spawn
if(instance_exists(obj_Cofre_General)) {
	boss_can_spawn = true;
}

// Spawn chests
if(control_Dungeon.Dungeon_Visitado[global.Posicion_i,global.Posicion_j] == 0) {
	
	boss_can_spawn = true;
	create_chest_big(x-24,y,get_random_item_from_pool("all"));
	create_chest_big(x+24,y,get_random_item_from_pool("all"));
	create_chest_big(x,y-24,get_random_item_from_pool("all"));
	create_chest_big(x,y+24,get_random_item_from_pool("all"));
	
}

if(boss_can_spawn == false) instance_destroy();
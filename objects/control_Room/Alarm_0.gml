/// @description  Cargar enemigos

// Cargar semilla
random_set_seed(global.UNIQUE_MAP_SEED + control_Dungeon.Dungeon_Seed[global.Posicion_i, global.Posicion_j]);

// Slimer receives damage
if(global.characterSelected == 11) {
	with(obj_Jugador) {
		if(alarm[3] < 0) {
			alarm[3] = Delay_Invencibilidad;
			event_perform(ev_other,ev_user9);
		    alarm[2] = 10;
		    HP -= 1;
		}
	}
}

// Create winning rockets
if(player_has_item(345)) and (obj_Jugador.HP == obj_Jugador.HP_Max) {
	spawn_rocket(5);	
}

// Create chests for the trapped
if(global.characterSelected == 13) {
	if(control_Dungeon.first_visit == true) and (control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j] == 2) {
		if(!instance_exists(obj_Cofre_Pickup)) {
			var chest = create_chest_big(348+(24*0),192+20,get_random_item_from_pool("all")); chest.locked = true;
			var chest = create_chest_big(348+(24*1),192+20,get_random_item_from_pool("all")); chest.locked = true;
			var chest = create_chest_big(348+(24*2),192+20,get_random_item_from_pool("all")); chest.locked = true;
			var chest = create_chest_big(348+(24*3),192+20,get_random_item_from_pool("all")); chest.locked = true;
		}
	}
}

// Create chest for completitionist
if(global.GAME_COMPLETED == true) {
	if(control_Dungeon.first_visit == true) and (control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j] == 2) {
		var chest = create_chest_big(348-(24*4),192+20,get_random_item_from_pool("all")); chest.locked = true;
	}	
}

control_Dungeon.first_visit = false;

// Cargar enemigos
if(instance_exists(obj_Enemigo_Spawner)) {

    Spawners = ds_list_create();
    for(n = 0; n < instance_number(obj_Enemigo_Spawner); n++) {
        var Spawner_ID = instance_find(obj_Enemigo_Spawner, n);
        if(point_distance(obj_Jugador.x, obj_Jugador.y, Spawner_ID.x, Spawner_ID.y) > 60) {
            ds_list_add(Spawners, Spawner_ID);
        }
    } 
    
    // load normal enemies
    if(control_Dungeon.Dungeon[global.Posicion_i, global.Posicion_j] != 21) {
        if(global.Mapa_Tipo != 12) {
            if(control_Dungeon.Dungeon_Enemigos[global.Posicion_i, global.Posicion_j] != "") {
                string_explode(control_Dungeon.Dungeon_Enemigos[global.Posicion_i, global.Posicion_j], "|" );
                for(i = 0; i < array_length_1d(level); i++) {
                    ds_list_shuffle(Spawners);
                    Spawner = ds_list_find_value(Spawners, 0);
                    ds_list_delete(Spawners,0);
                    if(!is_undefined(Spawner)) {
                        var _EnemyID = level[i];
                        if(player_has_pet(44)) and (chance(8))		 _EnemyID = 30;
                        if(player_has_pet(56)) and (_EnemyID == 35)  _EnemyID = 0;
                        if(player_has_pet(57)) and (_EnemyID == 36)  _EnemyID = 10;
                        if(player_has_pet(58)) and (_EnemyID == 37)  _EnemyID = 22;
                        if(global.Jugador_Pet == 27) and (chance(5)) _EnemyID = 1;
						/*
                        var Enemigo = instance_create( Spawner.x + 12, Spawner.y + 12, get_enemy( _EnemyID, 0 ) );
                        Enemigo.ID = _EnemyID;
                        Enemigo.xscale = 1;
                        Enemigo.yscale = 1;
						*/
						if(player_has_item(316) and (chance(10))) {
							
							// Generate boss if you have ram
							spawn_boss(Spawner.x+12,Spawner.y+12,get_random_boss_from_pool("rush"));
	                        create_effect(x,y,sprFxEnemySmoke,0.5);
							
						} else {
							
							// Generate normal enemy
							var Enemigo = spawn(Spawner.x+12,Spawner.y+12,_EnemyID);
	                        create_effect(x,y,sprFxEnemySmoke,0.5);
	                        if(instance_exists(obj_Jugador) and player_has_item(170) == false and Enemigo.object_index != obj_EnemyPlayer)		with(Enemigo) mob_become_champion();
	                        if(instance_exists(obj_Jugador) and player_has_item(172) and chance(5)) with(Enemigo) bonus_marked = true;
						}
                    }
                }  
            }
        } else {
            if(control_Dungeon.Dungeon_Enemigos[global.Posicion_i, global.Posicion_j] != "") {
                string_explode(global.Mini_Bosses_All,",");
                minibossList = ds_list_create();
                for(b = 0; b < string_count(",",global.Mini_Bosses_All); b++) {
                    ds_list_add(minibossList, real(level[b]));
                }
                    ds_list_shuffle(minibossList);
                    minibossID = ds_list_find_value(minibossList,0);
                    spawn_boss(310,165,minibossID);
                ds_list_destroy(minibossList);
            }
        }
    } else {
    
        // load secret room
        if(control_Dungeon.Dungeon_Enemigos[global.Posicion_i, global.Posicion_j] != "") {
            repeat(irandom_range(1,3)) {
                ds_list_shuffle(Spawners);
                Spawner = ds_list_find_value(Spawners, 0);
                ds_list_delete(Spawners,0);
                if(is_undefined(Spawner)) break;
				if(choose(0,0,0,0,0,1)) {
					var Cofre = create_chest_big(Spawner.x+12,Spawner.y+12,get_random_item_from_pool("treasure"));
				} else {
					var Cofre = create_chest(Spawner.x+12, Spawner.y+12, choose("experience","gold","blue"));
				}
            }
        }
    
    }
    
    ds_list_destroy(Spawners);
    control_Dungeon.Dungeon_Enemigos[global.Posicion_i, global.Posicion_j] = "";

}

// Activar puertas
obj_Puerta.Activada = true;


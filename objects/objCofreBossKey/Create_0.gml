// Vars
if(instance_number(objCofreBossKey) > 1) { instance_destroy(); exit; }
if(obj_Jugador.bosskey == true) { instance_destroy(); exit; }
if(instance_exists(obj_BossKey)) { instance_destroy(); exit; }

// Spawn defenders
enemy_num = 0;
with(obj_Enemigo_Spawner) {
    if(chance(20)) {
        spawn(x+12,y+12,irandom(20));
        create_effect(x+12,y+12, sprMagicEffect2, 0.4);
        other.enemy_num++;
    }
}

// Spawn miniboss
// Tower miniboss get
var minibossID = 0;
if(global.Mapa_Tipo <= 6) {
    dungeon_TowerBoss = ds_list_create();
        string_explode(global.Mini_Bosses_Tower,",");
        for(i = 0; i < string_count(",",global.Mini_Bosses_Tower); i++) {
            if(real(level[i]) != -1) ds_list_add(dungeon_TowerBoss,real(level[i]));
        }
        ds_list_shuffle(dungeon_TowerBoss);
        minibossID = ds_list_find_value(dungeon_TowerBoss,0);
        global.Mini_Bosses_Tower = string_replace(global.Mini_Bosses_Tower,","+string(minibossID)+",",",");
    ds_list_destroy(dungeon_TowerBoss);
} else {
    dungeon_TowerBoss = ds_list_create();
        string_explode(global.Mini_Bosses_Basement,",");
        for(i = 0; i < string_count(",",global.Mini_Bosses_Basement); i++) {
            if(real(level[i]) != -1) ds_list_add(dungeon_TowerBoss,real(level[i]));
        }
        ds_list_shuffle(dungeon_TowerBoss);
        minibossID = ds_list_find_value(dungeon_TowerBoss,0);
        global.Mini_Bosses_Basement = string_replace(global.Mini_Bosses_Basement,","+string(minibossID)+",",",");
    ds_list_destroy(dungeon_TowerBoss);
}
spawn_miniboss(x,y,minibossID);
        
// Close doors
with(obj_Puerta) {
    if(image_index != 3) {
        audio_play_sound(sprSpikeBlockHit, 0, 0);
        image_index = 1;
    }
}
instance_destroy();
/*
event_inherited();
get_chest_pool(chp_bosskey);
Pool = chp_bosskey;

/* */
/*  */

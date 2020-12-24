// Open
if(image_index == 0)and(alarm[1]<0) {
    image_index = 1;
    alarm[0] = 120;
    //script_execute(Pool);
    audio_play_sound(sndChestOpen,0,0);
    
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
            global.Mini_Bosses_Tower = string_replace(global.Mini_Bosses_Tower,","+string(Dungeon_Boss)+",",",");
        ds_list_destroy(dungeon_TowerBoss);
    } else {
        dungeon_TowerBoss = ds_list_create();
            string_explode(global.Mini_Bosses_Basement,",");
            for(i = 0; i < string_count(",",global.Mini_Bosses_Basement); i++) {
                if(real(level[i]) != -1) ds_list_add(dungeon_TowerBoss,real(level[i]));
            }
            ds_list_shuffle(dungeon_TowerBoss);
            minibossID = ds_list_find_value(dungeon_TowerBoss,0);
            global.Mini_Bosses_Basement = string_replace(global.Mini_Bosses_Basement,","+string(Dungeon_Boss)+",",",");
        ds_list_destroy(dungeon_TowerBoss);
    }
    spawn_miniboss(x + 64*choose(1,-1),y,minibossID);
            
    // Close doors
    with(obj_Puerta) {
        if(image_index != 3) {
            audio_play_sound(sprSpikeBlockHit, 0, 0);
            image_index = 1;
        }
    }

}

// Be repelled
var dd = point_direction(x, y, other.x, other.y);
var cs = .5;
var cx = cos(degtorad(dd))*cs;
var cy = sin(degtorad(dd))*cs;
if(place_free(x - cx, y)) x -= cx;
if(place_free(x, y + cy)) y += cy;
other.hSpeed = 0;
other.vSpeed = 0;


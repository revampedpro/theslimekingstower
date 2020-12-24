action_inherited();
/// Efectos que repercuten al jugador
if(!instance_exists(obj_Jugador))exit;
audio_stop_sound(sndBossKill);
audio_play_sound(sndBossKill, 0, 0);
create_effect(x, y, sprBloodSplat1, 0.35);
create_effect(x, y, sprBloodSplat2, 0.35);
create_effect(x, y, sprBloodSpray1, 0.35);

//GoogleAnalytics_SendEvent("ingame","boss_kills");

// Si es un miniboss y esta en la sala de la llave la suelta
if(room == room_Bosskey) and (miniboss != 2) {
    audio_play_sound(sndBossKey,0,0);
    instance_create(0,0,objBosskeySpawner);
}

// Experience
if(noExp == false) {
    var exp_orbs = max(10, floor(HP/10));
    repeat(exp_orbs) {
        instance_create(x, y, objExperienceOrb);
    }
}

repeat(4) {
    create_effect(x-5+random(10), y-5+random(10), sprEnemyDeath, 0.6-random(3)/10);
}

//if(room != room_Arcade) GoogleAnalytics_SendEvent("boss_defeat",string(ID));

// Efecto leech
with(obj_Jugador) {

    if(player_has_item(102)) {
        HP += 2;
        if(HP > HP_Max) HP = HP_Max;
    }
}

// Vars
var myPetID = get_boss(ID, 5);

// Get .ini data
ini_open("save.ini");
var myPetCounter = ini_read_real("S", "PUNC"+string(myPetID), 0);
ini_close();

if(myPetCounter == 10) {

    // Add pet
    if(petAdded == false) {
        if(myPetID != -1) {
        
            // Desbloquear el pet y guardarlo en el .ini
            ini_open("save.ini");
            global.Pets_Desbloqueados = ini_read_string("S", "IPS", "0");
            string_explode(global.Pets_Desbloqueados,"|");
            global.Pets_Desbloqueados = "";
            for( kk = 0; kk < count_pets(); kk++ ) {
                if( kk <  array_length_1d(level) )global.Pets_Desbloqueados += string(level[kk]) + "|";
                if( kk >= array_length_1d(level) )global.Pets_Desbloqueados += "0|";
            }
            
            string_explode(global.Pets_Desbloqueados,"|");
            level[myPetID] = 1;
            global.Pets_Desbloqueados = "";
            for(kk = 0; kk < count_pets(); kk++) {
                global.Pets_Desbloqueados += string(level[kk]) + "|";
            }
            ini_write_string("S", "IPS", global.Pets_Desbloqueados );
            ini_write_real("S", "PUNC"+string(myPetID), myPetCounter+1);
            ini_close();
            
            petAdded = true;
            
        }
    }
    
} else {

    // Sum counter
    ini_open("save.ini");
    ini_write_real("S", "PUNC"+string(myPetID), myPetCounter+1);
    ini_close();
}


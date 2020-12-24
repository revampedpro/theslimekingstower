// Salir si esta desactivada
checker++;
if(checker < checker_max) {
	exit;	
} else {
	checker = 0;	
}
if(Activada = false) exit;
var checked_room = check_room(Direccion);
var checked_room_exists = check_room_exists(Direccion);
if(room == room_Jefe_KingSlime) or (room == room_Jefe_BasementParty) or (room == room_Jefe_Mimic) or (room == room_Rush and !instance_exists(obj_Cofre_General) and instance_exists(control_RushRoom)) {
    if(image_index == 0 or image_index == 2) image_index = 1;
    solid = true;
    exit;
}
if((room == room_Jefe) or (room == room_Jefe_Amarillo)) and (instance_exists(parent_Enemigo)) {
    if(image_index == 0 or image_index == 2) image_index = 1;
    solid = true;
    exit;
}

// Don't be visible if you are in the tipster room and you are a wall
if(image_index == 3) and (room == room_Tip or room == room_Jefe_Mimic) {
	visible = false;	
}

// Unlock shop and treasure doors if the player has the following items
if(player_has_item(317)) and (checked_room == 7) and (islocked == true) islocked = false;
if(player_has_item(318)) and (checked_room == 4) and (islocked == true) islocked = false;

// Open secret rooms with Non Secret Rooms item
if(player_has_item(342)) and (secretroom) {
    solid = false;
    image_index = 5;
}

// Check if dungeon is visited then unlock the door
if(islocked == -1) {    
    if(checked_room==4 or checked_room==13 or checked_room==3 or checked_room==7 or checked_room==17) {
        islocked = true; 
    } else {
        islocked = false;
    }
}
if(check_room_visited(Direccion)) islocked = false;

// Open the lock
if(solid == true) and (!instance_exists(parent_Enemigo) and !instance_exists(objBosskeySpawner)) and (islocked) and (distance_to_object(obj_Jugador)<2) {
    if(checked_room == 3) {
        if(obj_Jugador.bosskey == true) {
            audio_play_sound(sndDoorUnlock,0,0);
            islocked = false;
        } else {
            if(control_UI.lockedbsx <= 0) {
                control_UI.lockedbsx = 3;
                control_UI.lockedbsy = 3;
            }
            if(alarm[2]<0) {
                audio_play_sound(snd_Error,0,0);
                audio_play_sound(sndDoorLocked,0,0); 
                alarm[2] = 120; 
            }
        }
    } else {
        if(obj_Jugador.keys > 0) {
            obj_Jugador.keys--;
            if(checked_room == 13) obj_Jugador.keys++;
            if(player_has_pet(67)) and (chance(25)) obj_Jugador.keys++;
            audio_play_sound(sndDoorUnlock,0,0);
            islocked = false;
        } else {
            if(control_UI.lockedsx <= 0) {
                control_UI.lockedsx = 3;
                control_UI.lockedsy = 3;
            }
            if(alarm[2]<0) {
                audio_play_sound(snd_Error,0,0);
                audio_play_sound(sndDoorLocked,0,0); 
                alarm[2] = 120; 
            }
        }
    }
}

// Secret room
if(checked_room_exists) and ((checked_room==21) or (control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j]==21)) {
    secretroom = true;
    if(control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j]==21 or check_room_visited(Direccion)) { image_index = 5; solid = false; }
}

// Comprobar si debería estar abierta
if((image_index == 1 or image_index == 7) and islocked == false and secretroom == false and !instance_exists(parent_Enemigo) and !instance_exists(objBosskeySpawner)) or (room == room_Challenge and instance_exists(obj_ChallengeSlime) and image_index == 1) {
    if(!instance_exists(fxTransition2)) {
        xscale = 1.3;
        yscale = 1.3;
    }
    image_index = 2;
    audio_stop_sound(snd_Puerta_Abrir);
    audio_play_sound(snd_Puerta_Abrir,1,0);
}

// Dejar de ser solida
if(image_index = 0 or image_index = 2 or (secretroom and image_index == 5)) solid = false; else solid = true;
if(secretroom == true) {
    if(solid == false) image_index = 5; else image_index = 3;
}

// Miniboss Room
if(checked_room_exists) and ((checked_room==22) or (control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j]==22)) {
    sprite_index = sprMinibossRoom;
    if(chance(2)) { var spk = create_effect(x-10+random(20), y-10+random(20), sprSparkle, 0.05+random(2)/10); if(Direccion= "arriba") spk.vspeed = -0.1 -random(1); if(Direccion= "abajo") spk.vspeed = +0.1 +random(1); if(Direccion= "izquierda") spk.hspeed = -0.1 -random(1); if(Direccion= "derecha") spk.hspeed = +0.1 +random(1); }
    if(!solid) image_index = 2; else image_index = 1;
    if(image_index == 1) and (!islocked) image_index = 7;
}

// Treasure room
if(checked_room_exists) and ((checked_room==4) or (control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j]==4)) {
    sprite_index = sprTreasureRoomDoor;
    if(chance(2)) { var spk = create_effect(x-10+random(20), y-10+random(20), sprSparkle, 0.05+random(2)/10); if(Direccion= "arriba") spk.vspeed = -0.1 -random(1); if(Direccion= "abajo") spk.vspeed = +0.1 +random(1); if(Direccion= "izquierda") spk.hspeed = -0.1 -random(1); if(Direccion= "derecha") spk.hspeed = +0.1 +random(1); }
    if(!solid) image_index = 2; else image_index = 1;
    if(image_index == 1) and (!islocked) image_index = 7;
}

// Fake Treasure room
if(checked_room_exists) and ((checked_room==13) or (control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j]==13)) {
    sprite_index = sprTreasureRoomDoor;
    if(chance(2)) { var spk = create_effect(x-10+random(20), y-10+random(20), sprSparkle, 0.05+random(2)/10); if(Direccion= "arriba") spk.vspeed = -0.1 -random(1); if(Direccion= "abajo") spk.vspeed = +0.1 +random(1); if(Direccion= "izquierda") spk.hspeed = -0.1 -random(1); if(Direccion= "derecha") spk.hspeed = +0.1 +random(1); }
    if(!solid) image_index = 2; else image_index = 1;
    if(image_index == 1) and (!islocked) image_index = 7;
}

// Shop room
if(checked_room_exists) and ((checked_room==7) or (control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j]==7)) {
    sprite_index = sprShopRoomDoor;
    if(chance(2)) { var spk = create_effect(x-10+random(20), y-10+random(20), sprSparkle, 0.05+random(2)/10); if(Direccion= "arriba") spk.vspeed = -0.1 -random(1); if(Direccion= "abajo") spk.vspeed = +0.1 +random(1); if(Direccion= "izquierda") spk.hspeed = -0.1 -random(1); if(Direccion= "derecha") spk.hspeed = +0.1 +random(1); }
    if(!solid) image_index = 2; else image_index = 1;
    if(image_index == 1) and (!islocked) image_index = 7;
}

// Health Shop room
if(checked_room_exists) and ((checked_room==17) or (control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j]==17)) {
    sprite_index = sprHealthShopRoomDoor;
    if(chance(2)) { var spk = create_effect(x-10+random(20), y-10+random(20), sprSparkle, 0.05+random(2)/10); if(Direccion= "arriba") spk.vspeed = -0.1 -random(1); if(Direccion= "abajo") spk.vspeed = +0.1 +random(1); if(Direccion= "izquierda") spk.hspeed = -0.1 -random(1); if(Direccion= "derecha") spk.hspeed = +0.1 +random(1); }
    if(!solid) image_index = 2; else image_index = 1;
    if(image_index == 1) and (!islocked) image_index = 7;
}

// Comprobar que es la puerta del jefe
if(check_room( Direccion ) == 3 or control_Dungeon.Dungeon[global.Posicion_i, global.Posicion_j] == 3 ) sprite_index = get_map( global.Mapa_Tipo, 9 );

// Trap
if(trapActive) and (spike_dir == 1) {
    spikes++;
    solid = true;
    if(spikes >= 13) {
        spike_dir = -1;
        alarm[0] = 60;
    }
}
if(trapActive) and (spike_dir == -1) and (alarm[0]<0){
    spikes--;
    solid = false;
    if(spikes < 0) {   
        spikes = 0;
        spike_dir = 1;
        trapActive = false;
        alarm[0] = 180;
    }
}


// Slimer unlock controller
player_has_shot = false;

// Create level up UI if there are stats and hasn't been spent
if(stats > 0) and (!instance_exists(control_LevelUp)) {
	instance_create(view_xview+view_wview/2,view_yview+view_hview+10,control_LevelUp);	
}

// Stop lazer sound
if(audio_is_playing(snd_Laser) or (audio_is_playing(snd_Laser2))) {
    audio_stop_sound(snd_Laser);
    audio_stop_sound(snd_Laser2);
}

/// Ajustar la vista
if( room = room_Normal ) {
    __view_set( e__VW.XView, 0, (obj_Jugador.x) - (__view_get( e__VW.WView, 0 )/2) );
    __view_set( e__VW.YView, 0, (obj_Jugador.y) - (__view_get( e__VW.HView, 0 )/2) );
}

/// Dejar de moverse
Velocidad_H = 0;
Velocidad_V = 0;
if( image_Direction = 1 ) sprite_index = spr_Parado_Derecha;
if( image_Direction = 2 ) sprite_index = spr_Parado_Izquierda;
if( image_Direction = 3 ) sprite_index = spr_Parado_Arriba;
if( image_Direction = 4 ) sprite_index = spr_Parado_Abajo;

/// Reestablecer bonus
if( Bonus_Magic_Shield = 1 ) Bonus_Magic_Shield = 2;
temp_Fuerza = 0;
temp_Cadencia_Disparo = 0;
Fuerza_Temporal = 0;
Bonus_HoverBoots = false;

flashColor = c_white;
alarm[2] = -1;

// Create pet
if(!instance_exists(objPet)) and (global.Jugador_Pet != -1) {
    instance_create(x, y, objPet);
}

// Create flesh soul
if(global.characterSelected == 10) and (room != room_Transicion_Jefe) and (!instance_exists(objFleshSoul)) {
    instance_create(x,y,objFleshSoul);
}

// Create rockets
if(Rockets > 0) and (room != room_Transicion_Jefe) {
    repeat(Rockets) instance_create(x,y,obj_Jugador_Rocket);
}

// CthulhuAura
if(room != room_Transicion_Jefe) {
    if(player_has_item(504)) {
        instance_create(x,y,objCthulhuAura);
    }
}

// Little Ones
if(room != room_Transicion_Jefe) {
    if(find_little_one(280) == false) and (player_has_item(280)) {
        var lil = instance_create(x,y,obj_LittleMe);
        lil.ID = 280;
        lil.shootRate = 40;
    }
    if(find_little_one(281) == false) and (player_has_item(281)) {
        var lil = instance_create(x,y,obj_LittleMe);
        lil.ID = 281;
        lil.ghost_bullets = true;
        lil.image_alpha = 0.75;
        lil.image_blend = c_gray;
        lil.shootRate = 70;
    }
    if(find_little_one(282) == false) and (player_has_item(282)) {
        var lil = instance_create(x,y,obj_LittleMe);
        lil.ID = 282;
        lil.image_blend = c_lime;
        lil.pierce_bullets = true;
        lil.shootRate = 65;
    }
    if(find_little_one(283) == false) and (player_has_item(283)) {
        var lil = instance_create(x,y,obj_LittleMe);
        lil.ID = 283;
        lil.image_blend = c_red;
        lil.lazer = true;
        lil.shootRate = 45;
    }
    if(find_little_one(284) == false) and (player_has_item(284)) {
        var lil = instance_create(x,y,obj_LittleMe);
        lil.ID = 284;
        lil.image_blend = c_purple;
        lil.shurikens = true;
        lil.shootRate = 50;
    }
    if(find_little_one(296) == false) and (player_has_item(296)) {
        var lil = instance_create(x,y,obj_LittleMe);
        lil.ID = 296;
        lil.image_blend = c_orange;
        lil.rockets = true;
        lil.shootRate = 250;
    }
            
}

xRStart = x;
yRStart = y;


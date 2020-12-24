//Create smoke effect
create_effect(x+H_SPEED, y+V_SPEED+(16-Altura)-4, sprBulletHitFx, 0.85);
create_effect(x+H_SPEED, y+V_SPEED+(16-Altura)-4, spr_FX_Hit, 0.5);
shake_camera(.5,.5);

// Efecto de sonido
audio_stop_sound(snd_Disparo_Hit_01);
audio_play_sound(choose(snd_Disparo_Hit_01),0,0);

// Only if player exists
if(!instance_exists(obj_Jugador)) exit;

// Bonus_Bomberbullets
if(instance_exists(obj_Jugador)) and (player_has_item(159)) and (chance(10)) {
    instance_create(x, y, objBomb);
}

// Bonus toxic bullets
if(player_has_item(297)) {
    instance_create(x,y,objToxicArea);
}

// Daña a los enemigos cercanos si hay
if(player_has_item(51)) {
    with(parent_Enemigo) {
        if(distance_to_object(other) < 32) {
            HP-=1;
            if(HP <= 0) instance_destroy();
            alarm[2] = 4;
        }
    }
}

// Destruir la lista
if(ds_exists(Objetivos, ds_type_list)) {
    ds_list_destroy(Objetivos);
}

// Inherit
event_inherited();

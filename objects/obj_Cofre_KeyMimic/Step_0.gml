// Retrieve player
var player = obj_Jugador;
if(network_is_online()) player = instance_nearest(x,y,parent_Jugador);

// Brillar
if(alarm[0] < 0) and (image_index = 0) {
    alarm[0] = choose(15,15,15,20,20,30);
    var FX = create_effect(x-14+random(28),y-14+random(28),sprSparkle,0.1 + random(2)/10);
    FX.depth = depth-1;
}

// Abrir la boca si se acerca el jugador
if(sprite_index == spr_Cofre_KeyMimic_Reposo) {
    if(distance_to_object(player)<30) {
        image_speed = 0.3;
        sprite_index = spr_Cofre_KeyMimic_Esperando;
        image_index = 0;
    }
}

// Cerrar la boca si se aleja
if(sprite_index == spr_Cofre_KeyMimic_Esperando) {
    if(distance_to_object(player)>=30) {
        sprite_index = spr_Cofre_KeyMimic_Reposo;
        image_speed = 0.2;
        image_index = 0;
    }
}

// Coger el item
if(distance_to_object(player) < 2 and obj_Jugador.alarm[4]<0 and obj_Jugador.keys >= control_Dungeon.KeyMimic_Value and alarm[1] < 0 and sprite_index != spr_Cofre_KeyMimic_Comiendo) {

    // Porcentaje de exito (100%)
    obj_Jugador.keys -= control_Dungeon.KeyMimic_Value;
    control_Dungeon.KeyMimic_Value *= 2;
    audio_play_sound(sndKeyDrop, 0, 0);
    audio_play_sound(sndMimicEating,0 ,0);
    alarm[1] = 25;
    sprite_index = spr_Cofre_KeyMimic_Comiendo;
    image_index = 0;
    
}


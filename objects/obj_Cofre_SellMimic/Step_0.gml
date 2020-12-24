// Brillar
if(alarm[0] < 0) and (image_index = 0) {
    alarm[0] = choose(15,15,15,20,20,30);
    var FX = create_effect(x-14+random(28),y-14+random(28),sprSparkle,0.1 + random(2)/10);
    FX.depth = depth-1;
}

// Abrir la boca si se acerca el jugador
if(sprite_index == spr_Cofre_SellMimic_Reposo) {
    if(distance_to_object(obj_Jugador)<30) {
        image_speed = 0.3;
        sprite_index = spr_Cofre_SellMimic_Esperando;
        image_index = 0;
    }
}

// Cerrar la boca si se aleja
if(sprite_index == spr_Cofre_SellMimic_Esperando) {
    if(distance_to_object(obj_Jugador)>=30) {
        sprite_index = spr_Cofre_SellMimic_Reposo;
        image_speed = 0.2;
        image_index = 0;
    }
}

// Coger el item
if(distance_to_object(obj_Jugador) < 2 and obj_Jugador.alarm[4]<0 and alarm[1] < 0 and sprite_index != spr_Cofre_SellMimic_Comiendo) {
    audio_play_sound(sndMimicEating,0 ,0);
    alarm[1] = 25;
    sprite_index = spr_Cofre_SellMimic_Comiendo;
    image_index = 0;
}


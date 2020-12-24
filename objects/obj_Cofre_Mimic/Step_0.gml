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
if(sprite_index == spr_Cofre_Mimic_Reposo) {
    if(distance_to_object(player)<30) {
        image_speed = 0.3;
        sprite_index = spr_Cofre_Mimic_Esperando;
        image_index = 0;
    }
}

// Cerrar la boca si se aleja
if(sprite_index == spr_Cofre_Mimic_Esperando) {
    if(distance_to_object(player)>=30) {
        sprite_index = spr_Cofre_Mimic_Reposo;
        image_speed = 0.2;
        image_index = 0;
    }
}

// Coger el item
if(distance_to_object(player) < 2 and obj_Jugador.alarm[4]<0 and global.Jugador_Monedas > 0 and alarm[1] < 0 and sprite_index != spr_Cofre_Mimic_Comiendo) {

    // Porcentaje de exito (20%)
    global.Jugador_Monedas--;
    audio_play_sound(snd_Moneda, 0, 0);
    audio_play_sound(sndMimicEating,0 ,0);
    alarm[1] = 25;
    sprite_index = spr_Cofre_Mimic_Comiendo;
    image_index = 0;
    
}


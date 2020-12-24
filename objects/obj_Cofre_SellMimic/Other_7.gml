//image_speed = 0;

// Loop esperando
if(sprite_index == spr_Cofre_SellMimic_Esperando) image_index = 5;

// Loop reposo
if(sprite_index == spr_Cofre_SellMimic_Reposo) image_index = 3;

// Tragarse la llave
if(sprite_index == spr_Cofre_SellMimic_Comiendo and instance_exists(obj_Jugador)) {

    // Lose item and get money
    if(player_lose_item_random() == true) {
        global.Jugador_Monedas += 10;
        audio_play_sound(sndGoldHeart, 0, 0);
    } else {
        audio_play_sound(snd_Error,0,0);
    }
    
    sprite_index = spr_Cofre_SellMimic_Esperando;
    image_index = 5;
    
}


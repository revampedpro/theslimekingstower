/// @description  Ser golpeado por fuentes externas
if(global.Pausado) exit;
if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
    global.Jugador_Monedas = 0;
    alarm[3] = Delay_Invencibilidad;
    var FX = create_effect( x, y, sprMagicShield, 1.50 );
    FX.depth = depth-10;
    FX.image_blend = c_yellow;
    FX.image_xscale = 1.5;
    FX.image_yscale = 1.5;
    audio_play_sound(snd_RingArmor, 0, 0);
    exit;
}
if(alarm[3] < 0) {

    alarm[3] = Delay_Invencibilidad;
    
    event_perform(ev_other, ev_user9);
    
    if( !Bonus_Phantom_Shield_Activo ) {
        
        if( Bonus_Magic_Shield < 2 ) {
            alarm[2] = 10;
            if(HP_Extra_S < 0)or(HP_Extra_S == 0 and HP_Extra[0] = -1) {
                HP -= 1;
            } else {
                HP_Extra_Q[HP_Extra_S]--;
                if(HP_Extra_Q[HP_Extra_S] <= 0) {
                    special_heart_used(HP_Extra[HP_Extra_S]);
                    HP_Extra[HP_Extra_S] = -1;
                    HP_Extra_S--
                }
            }
            audio_play_sound( choose(snd_Jugador_Herido_01,snd_Jugador_Herido_02,snd_Jugador_Herido_03), 0, 0 );

            // Check if you unlockd Igneous
            if(HP + HP_Extra_S <= 0) and (!check_character_unlocked(3,0)) unlock_character(3);
            
            if(player_has_item(94)) {
                Bonus_Phantom_Shield_Activo = true;
            }
        
        } else {
            Bonus_Magic_Shield = 1;
            var FX = create_effect( x, y, sprMagicShield, 1.50 );
            FX.depth = depth-10;
            FX.image_xscale = 1.5;
            FX.image_yscale = 1.5;
        }
    } else {
            Bonus_Phantom_Shield_Activo = false;
            var FX = create_effect( x, y, sprMagicShield, 1.50 );
            FX.depth = depth-10;
            FX.image_xscale = 1.5;
            FX.image_yscale = 1.5;
    }
    
}


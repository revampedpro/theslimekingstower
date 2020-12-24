/// @description special_heart_used(id)
/// @function special_heart_used
/// @param id
function special_heart_used() {

	// !! Any change made here has to be also made in "pack_listen_client" in the case "specialHeartUsed"
	// Tell your partner that a special heart was used
	if(network_is_online()) and (global.NETWORK_HOST == true) {
		pack_send_multi("specialHeartUsed","type",argument[0]);	
	}

	// Uses a special heart when it vanishes
	switch(argument[0]) {

	    case obj_ShieldHeart:
			with(parent_Jugador) {
		        var ccfx = create_effect(x, y, sprMagicShield, 0.5);
		        ccfx.image_blend = c_maroon;
		        alarm[3] = 180;
			}
	        var ccfx = instance_create(0, 0, fx_Sprite_Grow);
	        ccfx.sprite_index = sprShieldHeart;
	        audio_play_sound(sndShieldHeart,0 ,0);
	    break;

	    case obj_TimeHeart:
	        with(parent_Enemigo) alarm[11] = 200;
	        var ccfx = instance_create(0, 0, fx_Sprite_Grow);
	        ccfx.sprite_index = sprTimeHeart;
	        audio_play_sound(sndTimeHeart,0 ,0);
	    break;

	    case obj_SkullHeart:
	        with(parent_Enemigo) {
	            HP -= 20;
	            alarm[2] = 4;
	        }
	        var ccfx = instance_create(0, 0, fx_Sprite_Grow);
	        ccfx.sprite_index = sprSkullHeart;
	        audio_play_sound(sndSkullHeart,0 ,0);
	    break;

	    case obj_GoldHeart:
			if(!network_is_online() or global.NETWORK_HOST == true) {
				with(parent_Jugador) {
					repeat(irandom_range(3,5)) instance_create(x,y,obj_Moneda);
				}
			}
	        audio_play_sound(sndGoldHeart,0 ,0);
	        var ccfx = instance_create(0,0,fx_Sprite_Grow);
	        ccfx.sprite_index = sprGoldHeart;
	    break;

	    case obj_BatteryHeart:
	        obj_Jugador.Cargas += 50;
	        if(obj_Jugador.Cargas > obj_Jugador.Cargas_Max) obj_Jugador.Cargas = obj_Jugador.Cargas_Max;
	        audio_play_sound(sndBatteryHeart,0 ,0);
	        var ccfx = instance_create(0, 0, fx_Sprite_Grow);
	        ccfx.sprite_index = sprBatteryHeart;
	    break;
    
	}


}

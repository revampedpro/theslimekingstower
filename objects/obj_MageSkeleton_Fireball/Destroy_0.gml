/// @description Destroy effects
if(sprite_index == sprBulletEnemy) {
	
	//Create smoke effect
	create_effect(x, y, sprBulletHitFx, 0.85);
	create_effect(x, y, spr_FX_Hit, 0.5);

	// Efecto de sonido
	audio_stop_sound(snd_Disparo_Hit_01);
	audio_play_sound(choose(snd_Disparo_Hit_01),0,0);	
	
}

if(network_is_online() and network_is_host()) {
	pack_send_multi("objectDestroy","netid",netid,"object",object_index);	
}
// Rocket
if(sprite_index == sprDisparoRocket) {

	// Death effects
	var ss = audio_play_sound(snd_Bomb,0,0);
	audio_sound_pitch(ss,1.7 + random(4)/10);

	// Explosion
	create_effect(x,y,sprFxRocketMuzzy,0.5);

	// Shake
	shake_camera(2,2);

	// RHCR leave fire
	if(player_has_item(249)) instance_create(x,y,obj_Jugador_Disparo_Fuego);

}
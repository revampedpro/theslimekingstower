/// @description scr_jugador_common_shoot(bulletid)
/// @function scr_jugador_common_shoot
/// @param bulletid
/// Efectos comunes de disparo en los que no importa la direccion
function scr_jugador_common_shoot(argument0) {
	alarm[0] = 60/(obj_Jugador.Cadencia_Disparo+obj_Jugador.temp_Cadencia_Disparo);
	argument0.Delay_Antes_De_Caer = obj_Jugador.Caida_Disparo;
	argument0.alarm[0] = obj_Jugador.Caida_Disparo;

	// Player has shot (used for unlocking Slimer)
	player_has_shot = true;

	// Aplicar bonus
	argument0.Veneno   = player_has_item(13);
	argument0.Sangrado = player_has_item(14);
	argument0.Bounce   = player_has_item(21);
	argument0.Freeze   = player_has_item(29);
	argument0.Spiral   = player_has_item(30);
	argument0.image_xscale = obj_Jugador.Bullet_Size + 6*obj_Jugador.temp_Strike;
	argument0.image_yscale = obj_Jugador.Bullet_Size + 6*obj_Jugador.temp_Strike;
	obj_Jugador.temp_Strike = false;

	// Create bullet pellet
	if(global.Quality == 2) {
		instance_create(argument0.x,argument0.y,fxBulletPellet);	
	}

	// Asymmetric Arms
	if(argument0.Direccion_Relativa == 3) and (player_has_item(298)) {
		argument0.image_xscale = max(0.1,argument0.image_xscale-0.3);
		argument0.image_yscale = argument0.image_xscale;
		if(argument0.My_Fuerza > 0) argument0.My_Fuerza--;
	}
	if(argument0.Direccion_Relativa == 1) and (player_has_item(298)) {
		argument0.image_xscale = argument0.image_xscale+0.3;
		argument0.image_yscale = argument0.image_xscale;
		argument0.My_Fuerza++;
	}

	// Rage
	argument0.My_Fuerza += obj_Jugador.rage/2;

	// Sonido de disparo
	var Sonido_Disparo = choose(snd_Disparo_Disparar_02,snd_Disparo_Disparar_03);
	audio_stop_sound(snd_Disparo_Disparar_01);
	audio_stop_sound(snd_Disparo_Disparar_02);
	audio_stop_sound(snd_Disparo_Disparar_03);
	audio_play_sound(Sonido_Disparo, 0, 0);
	audio_sound_gain(snd_Disparo_Disparar_01,0.5,0);
	audio_sound_gain(snd_Disparo_Disparar_02,0.5,0);
	audio_sound_gain(snd_Disparo_Disparar_03,0.5,0);
	audio_play_sound(snd_Disparo_Disparar_01, 0, 0);

	// Separar las balas si tiene geocentrico
	if(player_has_item(111)) {
	    argument0.x -= 20 - random(40);
	    argument0.y -= 20 - random(40);
	}

	// Kill the player if Russian Roulette
	if(player_has_item(310)) {
		if(chance(1)) {
			HP = 0;	
			HP_Extra_S = 0;
			instance_create(0,0,objBombExplosion);
		}
	}


}

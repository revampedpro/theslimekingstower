// Upgrade
switch(stat) {
    
    case 0: // Damage
        create_map_text(room_width/2,-10,lang(5004),lang(5005));
        obj_Jugador.Fuerza++;
		obj_Jugador.stats--;
		create_effect(obj_Jugador.x, obj_Jugador.y, sprMagicEffect2, 0.4);
		floating_text(obj_Jugador.x, obj_Jugador.y-12, lang(5005), c_aqua, 2);
		audio_play_sound(snd_Heal,0,0);
		var s = audio_play_sound(sndPickup,0,0);
		audio_play_sound(sndPickupGet,0,0);
		image_xscale = 1.5;
		image_yscale = 0.25;
    break;
    
    case 1: // Health
        create_map_text(room_width/2,-10,lang(5004),lang(5006));
        obj_Jugador.HP_Max += 2;
        obj_Jugador.HP += 2;
		obj_Jugador.stats--;
		create_effect(obj_Jugador.x, obj_Jugador.y, sprMagicEffect2, 0.4);
		floating_text(obj_Jugador.x, obj_Jugador.y-12, lang(5006), c_aqua, 2);
		audio_play_sound(snd_Heal,0,0);
		var s = audio_play_sound(sndPickup,0,0);
		audio_play_sound(sndPickupGet,0,0);
		image_xscale = 1.5;
		image_yscale = 0.25;
    break;
    
    case 2: // Rate
        create_map_text(room_width/2,-10,lang(5004),lang(5007));
        obj_Jugador.Cadencia_Disparo += 1;
		obj_Jugador.stats--;
		create_effect(obj_Jugador.x, obj_Jugador.y, sprMagicEffect2, 0.4);
		floating_text(obj_Jugador.x, obj_Jugador.y-12, lang(5007), c_aqua, 2);
		audio_play_sound(snd_Heal,0,0);
		var s = audio_play_sound(sndPickup,0,0);
		audio_play_sound(sndPickupGet,0,0);
		image_xscale = 1.5;
		image_yscale = 0.25;
    break;

}

// Destroy
if(obj_Jugador.stats <= 0) {
	with(objLevelUpStat) {
		alarm[0]= 90;
		destroy = true;
	}
}
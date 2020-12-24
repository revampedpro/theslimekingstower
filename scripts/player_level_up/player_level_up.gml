/// @description player_level_up()
/// @function player_level_up
function player_level_up() {
	// Level up teh player
	if(network_is_online()) and (!network_is_host()) exit;
	if(!audio_is_playing(sndLevelUp)) audio_play_sound(sndLevelUp, 0, 0);
	obj_Jugador.Level++;
	obj_Jugador.Experience = 0;
	obj_Jugador.ExperienceMax += 50;
	if(obj_Jugador.Level == 99) obj_Jugador.ExperienceMax = 99999999;
	create_effect(obj_Jugador.x, obj_Jugador.y, sprMagicEffect2, 0.4);
	floating_text(obj_Jugador.x, obj_Jugador.y, lang(6505), c_aqua, 2);

	if(!instance_exists(control_LevelUp)) instance_create(view_xview+view_wview/2,view_yview+view_hview+10,control_LevelUp);
	/*
	switch(choose(0,1,2)) {
    
	    case 0: // Damage
	        create_map_text(room_width/2,-10,lang(5004),lang(5005));
	        obj_Jugador.Fuerza++;
	    break;
    
	    case 1: // Health
	        create_map_text(room_width/2,-10,lang(5004),lang(5006));
	        obj_Jugador.HP_Max += 2;
	        obj_Jugador.HP += 2;
	    break;
    
	    case 2: // Rate
	        create_map_text(room_width/2,-10,lang(5004),lang(5007));
	        obj_Jugador.Cadencia_Disparo += 1;
	    break;

	}
	*/


	// Increase player stats
	obj_Jugador.stats++;

	// LEVEL UP! item
	if(player_has_item(295)) {
	    obj_Jugador.Bonus_Odd_Mushroom = 760;
	    obj_Jugador.alarm[3] = 760;
	    audio_stop_sound(snd_Odd_Mushroom);
	    audio_play_sound(snd_Odd_Mushroom, 0, 0);
	}



}

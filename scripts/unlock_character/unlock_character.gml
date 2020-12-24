/// @description unlock_character(id)
/// @function unlock_character
/// @param id
function unlock_character() {
	if(global.Modo_Challenge_Activo == true) and (argument[0] != 7) exit;


	ini_open("save.ini");
	ini_write_real("SC"+string(argument[0]), string(0), true);
	ini_close();
	global.CharacterUnlocked[argument[0],0] = true;

	// Steam Achievements
	switch(argument[0]) {
	    case  1: steam_unlock("U_JADE"); break;
	    case  2: steam_unlock("U_THECOLLECTOR"); break;
	    case  3: steam_unlock("U_IGNEOUS"); break;
	    case  4: steam_unlock("U_VOID"); break;
	    case  5: steam_unlock("U_MAIYAN"); break;
	    case  6: steam_unlock("U_MIDAS"); break;
	    case  7: steam_unlock("U_MIND"); break;
	    case  8: steam_unlock("U_DOTS"); break;
	    case  9: steam_unlock("U_PRAYER"); break;
	}

	if(argument[0] == 0) exit;
	var notifier = instance_create(__view_get( e__VW.XView, 0 ) + 40, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), objCharacterUnlock);
	notifier.playerID = argument[0];
	audio_stop_sound(sndCharacterUnlocked);
	audio_play_sound(sndCharacterUnlocked,0,0);



}

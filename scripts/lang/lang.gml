/// @description lang(id)
/// @function lang
/// @param id
function lang(argument0) {

	// Devuelve la cadena de texto correspondiente segun el idioma
	global.Language = 1;
	if(os_get_language() == "en") global.Language = 1;
	if(os_get_language() == "es") global.Language = 0; 
	if(global.STEAM) {
	    if(string_upper(steam_current_game_language()) == "ENGLISH") global.Language = 1;
	    if(string_upper(steam_current_game_language()) == "SPANISH") global.Language = 0;
	}
	if(global.DEBUG_MODE) global.Language = 1;
	switch(global.Language) {

	    case 0: // Espanol
	        return lang_spanish(argument0);
	        break;
    
	    case 1: // Ingles
	        return lang_english(argument0);
	        break;

	}





}

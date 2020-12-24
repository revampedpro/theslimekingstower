/// @description check_character_unlocked(id,type)
/// @function check_character_unlocked
/// @param id
/// @param type
function check_character_unlocked() {
	/*
	    types:
	    0 = unlocked/locked
	    1 = slimeking defeated
	    2 = basement party defeated
	    3 = portal closed
		4 = defeated the skeleton king
		5 = defeated master mimic
	*/
	    ini_open("save.ini");
	    var request = ini_read_real("SC"+string(argument[0]), string(argument[1]), 0);
	    ini_close();
	    global.CharacterUnlocked[argument[0],argument[1]] = request;
	    return request;


}

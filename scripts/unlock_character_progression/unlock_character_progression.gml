/// @description unlock_character_progression
/// @param progression
/// @param characterid
function unlock_character_progression() {
	ini_open("save.ini");
	ini_write_real("SC"+string(argument[1]), string(argument[0]), true);
	ini_close();


}

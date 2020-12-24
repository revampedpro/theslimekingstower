/// @description steam_unlock(achievement)
/// @function steam_unlock
/// @param achievement
function steam_unlock() {
	// Unlock an achievement
	steam_enable();
	if(global.STEAM == true) {
	    if(!steam_get_achievement(argument[0])) steam_set_achievement(argument[0]);
	}



}

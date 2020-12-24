/// @description steam_enable()
/// @function steam_enable
function steam_enable() {
	// Try to start steam dlls
	if(global.STEAM == false) {
	    if(os_type == os_windows) {
	        if(steam_initialised()) {
	            if(steam_stats_ready() && steam_is_overlay_enabled()) {
	                global.STEAM = true;
					global.STEAMID = steam_get_user_steam_id();
	            }
	        }
	    }
	}



}

/// @description Receive Android Login Data
{
	var ident = ds_map_find_value(async_load,"id");
	if(ident == achievement_our_info) {
		global.GOOGLEID = string(ds_map_find_value(async_load,"playerid"));
		/*
		if(global.GOOGLEID == -1) {
			event_perform(ev_create,0);
			ini_open("save.ini");
				ini_write_real("IS", "LOGGED", false);	
			ini_close();
			audio_stop_all();
			exit;
		}
		*/
		req = http_get(global.URL + "ini_load.php?gid="+string((global.GOOGLEID)));
		alarm[0] = 60*60;
		
	}
}


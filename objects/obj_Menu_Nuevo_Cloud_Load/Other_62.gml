var r_str = "null";
if(ds_map_find_value(async_load, "id") == post) {
	r_str = ds_map_find_value(async_load, "result");
	if(r_str == "SAVENOTFOUND") {
		show_message_async(lang(7041));
		exit;		
	}
	if(r_str != "null") {
		// Load savefile
		base64_to_ini(r_str);
		game_restart();
	}
}
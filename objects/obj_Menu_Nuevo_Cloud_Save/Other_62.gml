var r_str = "null";
if(ds_map_find_value(async_load, "id") == post) {
	r_str = ds_map_find_value(async_load, "result");
	if(r_str != "null") {
		show_message_async(string_upper(lang(7039) + string(r_str)));	
	}
}

if(ds_map_find_value(async_load, "status")) {
	if(ds_map_find_value(async_load, "result") != "") {
		text = ds_map_find_value(async_load, "result");
	}
}
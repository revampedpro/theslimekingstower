/// @description Load .ini from cloud
if(ds_map_find_value(async_load, "id") == req) {

	// Load ini
	var save_string = ds_map_find_value(async_load, "result");

	//cloud_load_ini(save_string);
	
	ini_open("save.ini");
		ini_write_real("IS", "LOGGED", false);	
	ini_close();
	
	instance_destroy();
	
	room_goto(cutscene01);

}
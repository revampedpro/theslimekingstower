
/// @description Receive Android Login Data
{
	var ident = ds_map_find_value(async_load,"id");
	if(ident == achievement_our_info) {

		cloud_synchronise();
		room_goto(cutscene01);
		
	}
}


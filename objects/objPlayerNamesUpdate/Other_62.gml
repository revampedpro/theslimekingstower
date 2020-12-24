/// @description  Receive names
if(os_is_network_connected()) {
	if(ds_map_find_value(async_load, "id") == request) {
	    if(ds_map_find_value(async_load, "status") == 0) {
	       var str = ds_map_find_value(async_load, "result");
	       string_explode(str,"|");
		   ds_list_clear(global.PLAYER_NAMES);
		   for(var i = 0; i < 99; i++) {
			   if(global.Nombre != string(level[i])) {
				ds_list_add(global.PLAYER_NAMES,string(level[i]));
			   }
		   }
		   instance_destroy();
		}
	}
}
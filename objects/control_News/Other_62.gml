/// @description  Recibir datos del ranking
if(os_is_network_connected()) {
    if(ds_map_find_value(async_load, "id") == HTTP) {
    
        if(ds_map_find_value(async_load, "status") == 0) {
        
           Cadena = ds_map_find_value(async_load, "result");
           string_explode(Cadena,"|");
           Loaded = true;
           if(string_count("|", Cadena) < 6) instance_destroy();
    
        }
           
    }
}


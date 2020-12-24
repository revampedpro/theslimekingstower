/// @description  Recibir datos del ranking
if(ds_map_find_value(async_load, "id") == http) {
    if(ds_map_find_value(async_load, "status") == 0) {
       items = ds_map_find_value(async_load, "result");
       loaded = true;
    }
}


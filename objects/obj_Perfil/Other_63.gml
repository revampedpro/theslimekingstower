if(w == true) {
if(ds_map_find_value(async_load, "status")) {
	if(ds_map_find_value(async_load, "result") != "") {
		var t = ds_map_find_value(async_load, "result");
		
		global.Nombre = "";
		    global.Nombre = t;
		    if( global.Nombre = "" ) { show_message_async(lang(7)); global.Nombre = Pre_Nombre; exit; }
		    global.Nombre = string_upper(string_lettersdigits(global.Nombre));
		    global.Nombre = string_copy(global.Nombre, 0, 10);

		if( global.Nombre = "" ) global.Nombre = Pre_Nombre;
		global.Comprobar_Primera_Vez = false;

		ini_open( "save.ini" );
		ini_write_string( "S", "N", global.Nombre );
		ini_close();

		w = false;
	}
}
}
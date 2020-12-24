
if(w == true) {
	if(ds_map_find_value(async_load, "status")) {
		if(ds_map_find_value(async_load, "result") != "") {
			var Code = ds_map_find_value(async_load, "result");
			var URL = "http://37.187.20.198/skt1400/load_token.php";		
			
			post = http_post_string(URL, "token="+string(Code));
						
			Activado = false; 
			
			w = false;
		}
	}
}
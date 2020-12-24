if(w == true) {
	if(ds_map_find_value(async_load, "status")) {
		if(ds_map_find_value(async_load, "result") != "") {
			var Code = ds_map_find_value(async_load, "result");
			var URL = "http://37.187.20.198/skt/coderetrieve.php";
			http_post_string(URL, "name="+string(string(global.Nombre)) +"&"+ "code="+string(Code));
			w = false;
		}
	}
}
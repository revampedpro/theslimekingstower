if(w == true) {
	if(ds_map_find_value(async_load, "status")) {
		if(ds_map_find_value(async_load, "result") != "") {
			global.UNIQUE_MAP_SEED = ds_map_find_value(async_load, "result");
			var pre_seed = "";
			for(i = 1; i <= string_length(global.UNIQUE_MAP_SEED); i++) {
			    var num = string_char_at(global.UNIQUE_MAP_SEED, i);
			    if(num != "0")and(num != "1")and(num != "2")and(num != "3")and(num != "4")
			    and(num != "5")and(num != "6")and(num != "7")and(num != "8")and(num != "9") {
			        pre_seed += string(ord(string_char_at(global.UNIQUE_MAP_SEED, i)));
			    } else {
			        pre_seed += num;
			    }
			}
			global.UNIQUE_MAP_SEED = pre_seed;
			image_index = 1;
			if(string(global.UNIQUE_MAP_SEED) == "") global.UNIQUE_MAP_SEED = 0;
			global.UNIQUE_MAP_SEED = real(global.UNIQUE_MAP_SEED);
			w = false;
		}
	}
}



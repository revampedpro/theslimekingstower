function pr_Sala_99() {
	// Sala creada por Manu
	// Date: 01/02/17
	var Room = room_Normal;
	var dup = 1;
	var ddown = 0;
	var dleft = 0;
	var dright = 0;
	var type = 1;
	if(argument_count > 1) {
	    switch(argument[1]) {
	        case 0: return dup;    break;
	        case 1: return ddown;  break;
	        case 2: return dleft;  break;
	        case 3: return dright; break;
	        case 4: return type; break; case 5: return Room; break;
	    }
	}
	var r = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"];
	r[0] = "v1100000014";
	r[1] = "14v14004v44";
	r[2] = "4u41414u14v";
	r[3] = "44uuu41u141";
	r[4] = "uv44uv141uu";
	return r[argument[0]];



}

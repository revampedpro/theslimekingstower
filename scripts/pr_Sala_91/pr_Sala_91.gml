function pr_Sala_91() {
	// Sala creada por Manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 0;
	var ddown = 1;
	var dleft = 0;
	var dright = 0;
	var type = 3;
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
	r[0] = "0vvvvv00v00";
	r[1] = "vv111vv0vv0";
	r[2] = "v11vv1vvvvv";
	r[3] = "vv10000v1vv";
	r[4] = "vv1000001vv";
	return r[argument[0]];



}

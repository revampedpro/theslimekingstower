function pr_Sala_71() {
	// Sala creada por Manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 1;
	var ddown = 0;
	var dleft = 1;
	var dright = 1;
	var type = 12;
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
	r[0] = "22222022222";
	r[1] = "20000000002";
	r[2] = "00000000000";
	r[3] = "2r00r0r00r2";
	r[4] = "22222222222";
	return r[argument[0]];



}
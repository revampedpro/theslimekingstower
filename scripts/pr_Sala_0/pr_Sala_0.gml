function pr_Sala_0() {
	// Sala creada por manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 1;
	var ddown = 1;
	var dleft = 1;
	var dright = 1;
	var type = 11;
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
	r[0] = "01100000110";
	r[1] = "00uu000vu20";
	r[2] = "00111v11v00";
	r[3] = "02u1uu11100";
	r[4] = "01100000110";
	return r[argument[0]];



}

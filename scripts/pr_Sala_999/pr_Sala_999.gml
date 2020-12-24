function pr_Sala_999() {
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
	r[0] = "00yF01111N0";
	r[1] = "01111000LI0";
	r[2] = "000K0J11110";
	r[3] = "0M0G00y0110";
	r[4] = "000y00111H0";
	return r[argument[0]];



}

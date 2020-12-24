function pr_Sala_7() {
	// Sala creada por Manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 0;
	var ddown = 0;
	var dleft = 0;
	var dright = 1;
	var type = 2;
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
	r[0] = "uuuuuuu1023";
	r[1] = "uvuvu111002";
	r[2] = "uuuvu111000";
	r[3] = "uvuuvu11002";
	r[4] = "uuvuuuu1023";
	return r[argument[0]];



}

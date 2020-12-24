function pr_Sala_120() {
	// Sala creada por Manu
	// Date: 01/02/17
	var Room = room_Normal;
	var dup = 0;
	var ddown = 1;
	var dleft = 0;
	var dright = 1;
	var type = 6;
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
	r[0] = "66666666666";
	r[1] = "66666666666";
	r[2] = "66666111140";
	r[3] = "66666466666";
	r[4] = "66666066666";
	return r[argument[0]];



}

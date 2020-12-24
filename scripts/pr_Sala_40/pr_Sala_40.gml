function pr_Sala_40() {
	// Sala creada por Manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 1;
	var ddown = 1;
	var dleft = 0;
	var dright = 1;
	var type = 13;
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
	r[0] = "0u0u000uvu1";
	r[1] = "0uvuu011uu0";
	r[2] = "0vuuuu11000";
	r[3] = "uuuuvu1u1uu";
	r[4] = "uuv0u001uuv";
	return r[argument[0]];



}

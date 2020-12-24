function pr_Sala_74() {
	// Sala creada por Manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 1;
	var ddown = 1;
	var dleft = 0;
	var dright = 0;
	var type = 10;
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
	r[0] = "66666000000";
	r[1] = "66666222221";
	r[2] = "11111111111";
	r[3] = "12222266666";
	r[4] = "00000066666";
	return r[argument[0]];



}

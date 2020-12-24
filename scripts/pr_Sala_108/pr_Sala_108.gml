function pr_Sala_108() {
	// Sala creada por Manu
	// Date: 01/02/17
	var Room = room_Normal;
	var dup = 1;
	var ddown = 0;
	var dleft = 0;
	var dright = 1;
	var type = 5;
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
	r[0] = "uu100000000";
	r[1] = "uuuu0001000";
	r[2] = "uuvu1111000";
	r[3] = "vuuuvuu1100";
	r[4] = "uvuvuvuuu10";
	return r[argument[0]];



}

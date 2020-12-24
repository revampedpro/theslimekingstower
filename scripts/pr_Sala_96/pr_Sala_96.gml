function pr_Sala_96() {
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
	r[0] = "44440000222";
	r[1] = "11110220000";
	r[2] = "11110220000";
	r[3] = "11110220000";
	r[4] = "44440000222";
	return r[argument[0]];



}

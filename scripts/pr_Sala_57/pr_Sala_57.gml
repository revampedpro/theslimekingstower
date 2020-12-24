function pr_Sala_57() {
	// Sala creada por Manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 1;
	var ddown = 1;
	var dleft = 1;
	var dright = 0;
	var type = 15;
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
	r[0] = "32110022444";
	r[1] = "201vv022444";
	r[2] = "001vv122444";
	r[3] = "201vv022444";
	r[4] = "32110022444";
	return r[argument[0]];



}

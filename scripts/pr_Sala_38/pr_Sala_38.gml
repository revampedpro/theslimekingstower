function pr_Sala_38() {
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
	r[0] = "uuuu0001110";
	r[1] = "uuvuu012220";
	r[2] = "uvuuu112320";
	r[3] = "uuvu1012220";
	r[4] = "uvuuu001110";
	return r[argument[0]];



}

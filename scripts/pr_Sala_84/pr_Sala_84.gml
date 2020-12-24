function pr_Sala_84() {
	// Sala creada por Manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 0;
	var ddown = 0;
	var dleft = 1;
	var dright = 0;
	var type = 4;
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
	r[0] = "0004uvuuvuu";
	r[1] = "004uuvuuuuu";
	r[2] = "04uvuuuvuuv";
	r[3] = "0uvuuvuuvuv";
	r[4] = "0uuuvuuuuvv";
	return r[argument[0]];



}

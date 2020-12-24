function pr_Sala_90() {
	// Sala creada por Manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 0;
	var ddown = 1;
	var dleft = 0;
	var dright = 0;
	var type = 3;
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
	r[0] = "44442222222";
	r[1] = "44222222222";
	r[2] = "44nnnnnnnn0";
	r[3] = "44222222220";
	r[4] = "44442000000";
	return r[argument[0]];



}

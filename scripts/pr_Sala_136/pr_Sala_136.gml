function pr_Sala_136() {
	// Sala creada por Manu
	// Date: 01/02/17
	var Room = room_Normal;
	var dup = 0;
	var ddown = 1;
	var dleft = 1;
	var dright = 0;
	var type = 7;
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
	r[0] = "32111123222";
	r[1] = "20111112222";
	r[2] = "00000111222";
	r[3] = "20000002222";
	r[4] = "32000023222";
	return r[argument[0]];



}

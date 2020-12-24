function pr_Sala_18() {
	// Sala creada por Manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 0;
	var ddown = 0;
	var dleft = 1;
	var dright = 1;
	var type = 9;
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
	r[0] = "uvu1uvuuuuu";
	r[1] = "uuu1v0u1uvu";
	r[2] = "00011111000";
	r[3] = "uu011u11u0u";
	r[4] = "u0uv1u11vuu";
	return r[argument[0]];



}

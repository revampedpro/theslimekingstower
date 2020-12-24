function pr_Sala_167() {
	// Sala creada por Manu
	// Date: 01/02/17
	var Room = room_Normal;
	var dup = 1;
	var ddown = 1;
	var dleft = 1;
	var dright = 1;
	var type = 11;
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
	r[0] = "uuuuu000uuu";
	r[1] = "001uuuu1100";
	r[2] = "0u11u1uu100";
	r[3] = "00u1u0111u0";
	r[4] = "0uu000uu1uu";
	return r[argument[0]];



}

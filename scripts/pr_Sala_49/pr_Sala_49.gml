function pr_Sala_49() {
	// Sala creada por Manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 0;
	var ddown = 1;
	var dleft = 1;
	var dright = 1;
	var type = 14;
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
	r[0] = "3v111u11uvv";
	r[1] = "u01u1111u00";
	r[2] = "00uv00u11u0";
	r[3] = "0u10000u100";
	r[4] = "311000u0u1v";
	return r[argument[0]];



}

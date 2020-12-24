function pr_Sala_11() {
	// Sala creada por Manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 1;
	var ddown = 0;
	var dleft = 0;
	var dright = 0;
	var type = 1;
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
	r[0] = "3u00404u0v3";
	r[1] = "1vu04440u01";
	r[2] = "110v0000111";
	r[3] = "111u111111u";
	r[4] = "3u1uv1uv1v3";
	return r[argument[0]];



}

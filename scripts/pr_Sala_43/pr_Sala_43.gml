function pr_Sala_43() {
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
	r[0] = "uuuvuuuuuuu";
	r[1] = "00uuvuuvu00";
	r[2] = "0011uu11100";
	r[3] = "00010001100";
	r[4] = "00000000000";
	return r[argument[0]];



}

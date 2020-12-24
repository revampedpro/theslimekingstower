function pr_Sala_53() {
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
	r[0] = "11111111111";
	r[1] = "06666666660";
	r[2] = "06666666660";
	r[3] = "06666666660";
	r[4] = "11110001111";
	return r[argument[0]];



}

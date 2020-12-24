function pr_Sala_237() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 0;
	var dleft   = 1;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 8;

	if(argument_count > 1) {
	    switch(argument[1]) {
	          case 0: return dup;    break;
	          case 1: return ddown;  break;
	          case 2: return dleft;  break;
	          case 3: return dright; break;
	          case 4: return type;   break;
	          case 5: return Room;   break;
	    }
	}

	var r = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"];

	r[0] = "v1nnnn0101113";
	r[1] = "0vv110101u010";
	r[2] = "1010vv1111110";
	r[3] = "110110vv1nnnn";
	r[4] = "00u10111vv0v1";
	r[5] = "0101111u0111v";
	r[6] = "3888888888888";
	return r[argument0];


}

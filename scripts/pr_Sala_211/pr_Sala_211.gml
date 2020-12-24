function pr_Sala_211() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 0;
	var dleft   = 0;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 1;

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

	r[0] = "2vvvv002vvvvv";
	r[1] = "2v222222v222v";
	r[2] = "2vvvvvvvv2vvv";
	r[3] = "2222222222v22";
	r[4] = "x0x002vvv2vvv";
	r[5] = "000032v2v222v";
	r[6] = "x0x00vv2vvvvv";
	return r[argument0];


}

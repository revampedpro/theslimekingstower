function pr_Sala_272() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 1;
	var dleft   = 1;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 11;

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

	r[0] = "u1111111111u1";
	r[1] = "11u1v111u1111";
	r[2] = "v1uu111v11v11";
	r[3] = "1v11v1u11v111";
	r[4] = "111111111u111";
	r[5] = "111u11v1uu1v1";
	r[6] = "u11111111111u";
	return r[argument0];


}

function pr_Sala_273() {
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

	r[0] = "11111111u1111";
	r[1] = "1v11111111111";
	r[2] = "11u1111111v11";
	r[3] = "11v111v111111";
	r[4] = "111111111v111";
	r[5] = "111u111111u11";
	r[6] = "111v111111111";
	return r[argument0];


}

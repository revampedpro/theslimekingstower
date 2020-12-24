function pr_Sala_196() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 1;
	var dleft   = 0;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 3;

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

	r[0] = "6666666666666";
	r[1] = "6w366666663w6";
	r[2] = "6ww6666666ww6";
	r[3] = "6666666666666";
	r[4] = "6666666666666";
	r[5] = "6666600066666";
	r[6] = "6666600066666";
	return r[argument0];


}

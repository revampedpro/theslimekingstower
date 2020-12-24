function pr_Sala_189() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 0;
	var dleft   = 0;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 2;

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

	r[0] = "444vu0v110000";
	r[1] = "444vv0v110000";
	r[2] = "444vuuv110000";
	r[3] = "444vuuu110000";
	r[4] = "444vvuv110000";
	r[5] = "444uvvu110000";
	r[6] = "444vuvuu10000";
	return r[argument0];


}

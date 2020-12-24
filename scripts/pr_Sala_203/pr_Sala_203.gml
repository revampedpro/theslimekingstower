function pr_Sala_203() {
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

	r[0] = "3200000000023";
	r[1] = "2111111111112";
	r[2] = "0uuu1uu111111";
	r[3] = "v4uvu4v1uuu11";
	r[4] = "uvv4vv0v4v4vv";
	r[5] = "vv4v44v4vu04u";
	r[6] = "00uuvu40vv4vv";
	return r[argument0];


}

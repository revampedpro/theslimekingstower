function pr_Sala_250() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 1;
	var dleft   = 0;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 6;

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

	r[0] = "uuvvv4v4vvv44";
	r[1] = "uuv4uv4u444vu";
	r[2] = "uvvv4uuvuvv0v";
	r[3] = "44u1vv1111111";
	r[4] = "4u11111111111";
	r[5] = "0vuuuv111uu4v";
	r[6] = "044vvv1111vv4";
	return r[argument0];


}

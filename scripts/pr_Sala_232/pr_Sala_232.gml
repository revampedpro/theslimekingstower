function pr_Sala_232() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 0;
	var dleft   = 0;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 5;

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

	r[0] = "311412120o104";
	r[1] = "1111120201111";
	r[2] = "11v10202k1100";
	r[3] = "4011u202011u1";
	r[4] = "0110020001010";
	r[5] = "0011120100v01";
	r[6] = "311411088o883";
	return r[argument0];


}

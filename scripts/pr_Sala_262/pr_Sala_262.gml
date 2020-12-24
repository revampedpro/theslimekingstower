function pr_Sala_262() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 0;
	var dleft   = 1;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 9;

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

	r[0] = "6111111111116";
	r[1] = "6166666666616";
	r[2] = "3116666666113";
	r[3] = "1116666666110";
	r[4] = "3116666666113";
	r[5] = "6166666666616";
	r[6] = "6111111111116";
	return r[argument0];


}

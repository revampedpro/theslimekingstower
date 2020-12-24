function pr_Sala_261() {
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

	r[0] = "2uuuuuv111112";
	r[1] = "2vuvuuvv11112";
	r[2] = "31vuuu1111113";
	r[3] = "11111111uv111";
	r[4] = "311111uvuv113";
	r[5] = "21111uvu0vv12";
	r[6] = "2111vuuuvuuv2";
	return r[argument0];


}

function pr_Sala_234() {
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

	r[0] = "01340l0m77777";
	r[1] = "1111vl0m0111a";
	r[2] = "101v1l0m10004";
	r[3] = "41110l0m00110";
	r[4] = "0vv10l0m11014";
	r[5] = "11110l011010a";
	r[6] = "3v41101088808";
	return r[argument0];


}

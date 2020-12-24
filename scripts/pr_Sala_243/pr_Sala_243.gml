function pr_Sala_243() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 0;
	var dleft   = 1;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 8;

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

	r[0] = "3110010024113";
	r[1] = "0101101121010";
	r[2] = "1101010023111";
	r[3] = "1011101122224";
	r[4] = "0111110101111";
	r[5] = "001010101111o";
	r[6] = "0441o11441100";
	return r[argument0];


}

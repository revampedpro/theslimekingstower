function pr_Sala_212() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 0;
	var dleft   = 1;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 4;

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

	r[0] = "32111v0vuuuu0";
	r[1] = "201uvuv0vvvv0";
	r[2] = "001uuvuuuuuvv";
	r[3] = "00111uvvvu0u0";
	r[4] = "0011uvv0vvu0v";
	r[5] = "20111uvv0vv0u";
	r[6] = "32111v0uvuu00";
	return r[argument0];


}

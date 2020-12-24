function pr_Sala_289() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 1;
	var dleft   = 0;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 10;

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

	r[0] = "2222220222222";
	r[1] = "onnn00000nnno";
	r[2] = "onnn00000nnno";
	r[3] = "onnn00000nnno";
	r[4] = "onnn00000nnno";
	r[5] = "onnn00000nnno";
	r[6] = "2222220222222";
	return r[argument0];


}

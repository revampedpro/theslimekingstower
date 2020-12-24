function pr_Sala_323() {
	// Room designed by Manu
	// Date: 30/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 1;
	var dleft   = 1;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 14;

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

	r[0] = "2222222222222";
	r[1] = "2222222222222";
	r[2] = "14141l0m14040";
	r[3] = "01101l0m00111";
	r[4] = "11000l0m01110";
	r[5] = "10010l0m00111";
	r[6] = "41413l0m31414";
	return r[argument0];


}

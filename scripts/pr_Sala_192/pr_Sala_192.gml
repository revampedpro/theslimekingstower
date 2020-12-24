function pr_Sala_192() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 1;
	var dleft   = 0;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 3;

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

	r[0] = "vvvvuuuvvvvvv";
	r[1] = "vvvuuuuuuuuvv";
	r[2] = "vuuvuuuuuuuuu";
	r[3] = "uuuuvv111vuuu";
	r[4] = "u111111111vvu";
	r[5] = "1111111111111";
	r[6] = "1110000000001";
	return r[argument0];


}

function pr_Sala_235() {
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

	r[0] = "3011v0011uuuu";
	r[1] = "1110011uuuuuv";
	r[2] = "010111uuuuuvv";
	r[3] = "011011uuuvvvw";
	r[4] = "v011uuuuuvvww";
	r[5] = "0111uuuuvvwww";
	r[6] = "31uuuuvvvwwww";
	return r[argument0];


}

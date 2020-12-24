function pr_Sala_256() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 1;
	var dleft   = 1;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 7;

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
	r[1] = "0011111144442";
	r[2] = "0011111144442";
	r[3] = "0222224222222";
	r[4] = "o00000000000o";
	r[5] = "o00000000000o";
	r[6] = "2222220222222";
	return r[argument0];


}

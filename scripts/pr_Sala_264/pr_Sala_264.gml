function pr_Sala_264() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 1;
	var dleft   = 1;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 11;

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

	r[0] = "2291140411a22";
	r[1] = "2291111111a22";
	r[2] = "4011112111104";
	r[3] = "0011123211100";
	r[4] = "4011112111104";
	r[5] = "2291111111a22";
	r[6] = "2291140411a22";
	return r[argument0];


}

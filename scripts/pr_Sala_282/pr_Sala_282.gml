function pr_Sala_282() {
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

	r[0] = "3211111111123";
	r[1] = "2111221111112";
	r[2] = "1111221111111";
	r[3] = "1111111111111";
	r[4] = "1111111111111";
	r[5] = "2111111111112";
	r[6] = "3211111111123";
	return r[argument0];


}

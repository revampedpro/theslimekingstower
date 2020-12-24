function pr_Sala_302() {
	// Room designed by Manu
	// Date: 30/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 1;
	var dleft   = 1;
	var dright  = 1;
	var Room    = room_Inicial;
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

	r[0] = "30000000003";
	r[1] = "00000000000";
	r[2] = "00E00E00E00";
	r[3] = "00000000000";
	r[4] = "30000000003";
	return r[argument0];


}

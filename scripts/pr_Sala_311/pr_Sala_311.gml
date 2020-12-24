function pr_Sala_311() {
	// Room designed by Manu
	// Date: 02/05/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 0;
	var dleft   = 1;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 9;

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

	r[0] = "2226666666222";
	r[1] = "2226666666222";
	r[2] = "3226666666223";
	r[3] = "000K66666L000";
	r[4] = "3226666666223";
	r[5] = "2226666666222";
	r[6] = "2226666666222";
	return r[argument0];


}

function pr_Sala_201() {
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

	r[0] = "3200444440023";
	r[1] = "20042nnn24002";
	r[2] = "004n2nnn20400";
	r[3] = "004nnnnnnn400";
	r[4] = "0004222224000";
	r[5] = "2000444440002";
	r[6] = "3200000000023";
	return r[argument0];


}

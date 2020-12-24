function pr_Sala_222() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 0;
	var dleft   = 0;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 2;

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

	r[0] = "0111001001002";
	r[1] = "1444101444002";
	r[2] = "1434010434102";
	r[3] = "0444101444000";
	r[4] = "1100444000102";
	r[5] = "0111434110102";
	r[6] = "1010444111102";
	return r[argument0];


}

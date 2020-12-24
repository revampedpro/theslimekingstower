function pr_Sala_316() {
	// Room designed by Manu
	// Date: 02/05/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 1;
	var dleft   = 0;
	var dright  = 0;
	var Room    = room_Inicial;
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

	r[0] = "20111110102";
	r[1] = "F110101111I";
	r[2] = "21011J11002";
	r[3] = "G111111111H";
	r[4] = "20013131112";
	return r[argument0];


}

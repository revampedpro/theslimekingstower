function pr_Sala_210() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 0;
	var dleft   = 0;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 1;

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

	r[0] = "4551000001554";
	r[1] = "4551000001554";
	r[2] = "4551000001554";
	r[3] = "4551111111554";
	r[4] = "4555555555554";
	r[5] = "4555555555554";
	r[6] = "4555555555554";
	return r[argument0];


}

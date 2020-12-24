function pr_Sala_209() {
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

	r[0] = "3222000002223";
	r[1] = "2lllll0mmmmm2";
	r[2] = "2l111l0m111m2";
	r[3] = "2l111l0m111m2";
	r[4] = "2l111l0m111m2";
	r[5] = "2lllll0mmmmm2";
	r[6] = "3222222222223";
	return r[argument0];


}

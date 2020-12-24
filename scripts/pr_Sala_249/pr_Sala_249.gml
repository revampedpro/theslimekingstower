function pr_Sala_249() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 1;
	var dleft   = 0;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 6;

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

	r[0] = "6666666666666";
	r[1] = "6666666666666";
	r[2] = "6666631111111";
	r[3] = "6666611111111";
	r[4] = "6666611111100";
	r[5] = "6666611166666";
	r[6] = "6x66610066666";
	return r[argument0];


}

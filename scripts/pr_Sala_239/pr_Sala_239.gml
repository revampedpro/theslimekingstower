function pr_Sala_239() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 0;
	var dleft   = 1;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 8;

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

	r[0] = "0111111666666";
	r[1] = "1666660666666";
	r[2] = "1666661666666";
	r[3] = "1111044666666";
	r[4] = "6666666666666";
	r[5] = "6666666666666";
	r[6] = "6666666666666";
	return r[argument0];


}

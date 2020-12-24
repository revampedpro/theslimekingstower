function pr_Sala_236() {
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

	r[0] = "0o10q000q0u01";
	r[1] = "1010011011v11";
	r[2] = "1111110111100";
	r[3] = "111u101116666";
	r[4] = "0101111116666";
	r[5] = "11u1u011v6600";
	r[6] = "uo000rrr0660x";
	return r[argument0];


}

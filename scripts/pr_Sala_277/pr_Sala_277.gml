function pr_Sala_277() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 1;
	var dleft   = 1;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 15;

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

	r[0] = "3001u11001v03";
	r[1] = "1u001v010u110";
	r[2] = "111v001010011";
	r[3] = "010011000110u";
	r[4] = "0011001110u11";
	r[5] = "00vu110u01011";
	r[6] = "300011100v013";
	return r[argument0];


}

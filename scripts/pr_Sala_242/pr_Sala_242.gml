function pr_Sala_242() {
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

	r[0] = "nnnn111100104";
	r[1] = "1101111133301";
	r[2] = "4131111113010";
	r[3] = "1131101113111";
	r[4] = "413331010111s";
	r[5] = "u110110vvv114";
	r[6] = "uu10vv1110nnn";
	return r[argument0];


}

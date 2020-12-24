function pr_Sala_233() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 0;
	var dleft   = 0;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 5;

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

	r[0] = "9411q11124u03";
	r[1] = "9111100020010";
	r[2] = "911111v122221";
	r[3] = "9101111021100";
	r[4] = "90v1111121111";
	r[5] = "9111111000104";
	r[6] = "941ur11111003";
	return r[argument0];


}

function pr_Sala_200() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 1;
	var dleft   = 0;
	var dright  = 0;
	var Room    = room_Bigger;
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

	r[0] = "2222222222222";
	r[1] = "2t111111111s2";
	r[2] = "t11111111111s";
	r[3] = "2t111111111s2";
	r[4] = "t00000000001s";
	r[5] = "2t000000000s2";
	r[6] = "2222230322222";
	return r[argument0];


}
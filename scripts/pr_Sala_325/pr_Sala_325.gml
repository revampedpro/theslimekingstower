function pr_Sala_325() {
	// Room designed by Manu
	// Date: 30/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 1;
	var dleft   = 1;
	var dright  = 1;
	var Room    = room_Inicial;
	var type    = 11;

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

	r[0] = "hbbjjjjjbbh";
	r[1] = "bbjjbbbjjbb";
	r[2] = "bbjbbhbbjbb";
	r[3] = "bbjjbbbjjbb";
	r[4] = "hbbjjjjjbbh";
	return r[argument0];


}

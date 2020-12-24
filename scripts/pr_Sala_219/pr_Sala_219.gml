function pr_Sala_219() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 0;
	var dleft   = 1;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 4;

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

	r[0] = "322222o222222";
	r[1] = "2n00n001111vu";
	r[2] = "2n00n001111vu";
	r[3] = "0n00n001111vu";
	r[4] = "2n00n001111vu";
	r[5] = "2n00n001111vu";
	r[6] = "322222o222222";
	return r[argument0];


}

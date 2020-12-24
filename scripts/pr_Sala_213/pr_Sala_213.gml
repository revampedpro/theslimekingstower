function pr_Sala_213() {
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

	r[0] = "2111n444n44nn";
	r[1] = "2111nn444nnnn";
	r[2] = "31114nnnnn44n";
	r[3] = "0111n4n4n4nnn";
	r[4] = "31114n4nnn044";
	r[5] = "211144n4n4nnn";
	r[6] = "21114n4n4n4n4";
	return r[argument0];


}

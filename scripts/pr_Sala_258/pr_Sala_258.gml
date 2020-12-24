function pr_Sala_258() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 0;
	var dleft   = 1;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 9;

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

	r[0] = "1000101111011";
	r[1] = "0100111011000";
	r[2] = "1111111101101";
	r[3] = "1111112211011";
	r[4] = "0110002211110";
	r[5] = "0111100110000";
	r[6] = "0111010111001";
	return r[argument0];


}

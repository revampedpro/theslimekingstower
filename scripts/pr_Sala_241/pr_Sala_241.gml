function pr_Sala_241() {
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

	r[0] = "40111100011u4";
	r[1] = "0111110111111";
	r[2] = "111vv1vv1v011";
	r[3] = "1vv1111001vvv";
	r[4] = "1011110011011";
	r[5] = "o10101011011o";
	r[6] = "u11u0111o1110";
	return r[argument0];


}

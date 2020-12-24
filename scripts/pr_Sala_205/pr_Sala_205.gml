function pr_Sala_205() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 0;
	var dleft   = 0;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 1;

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

	r[0] = "0000000002000";
	r[1] = "1102010023210";
	r[2] = "1123210112101";
	r[3] = "1112111211111";
	r[4] = "1121112321121";
	r[5] = "1232010201232";
	r[6] = "0020011111020";
	return r[argument0];


}

function pr_Sala_310() {
	// Room designed by Manu
	// Date: 02/05/18
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

	r[0] = "2CCCCCCCCCCCF";
	r[1] = "2422222222222";
	r[2] = "311001101111H";
	r[3] = "0001111101112";
	r[4] = "311111J011112";
	r[5] = "20110001vuy02";
	r[6] = "2G01010vuIuv2";
	return r[argument0];


}

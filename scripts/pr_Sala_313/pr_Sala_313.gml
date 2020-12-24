function pr_Sala_313() {
	// Room designed by Manu
	// Date: 02/05/18
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

	r[0] = "6666660666666";
	r[1] = "666666N666666";
	r[2] = "6666666666666";
	r[3] = "0K66666M11111";
	r[4] = "6666666211111";
	r[5] = "6666666211112";
	r[6] = "6666666L11123";
	return r[argument0];


}

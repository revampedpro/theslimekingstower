function pr_Sala_252() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 1;
	var dleft   = 1;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 7;

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
	r[1] = "4444444442222";
	r[2] = "4222222242222";
	r[3] = "00nnnnn242222";
	r[4] = "222222n242222";
	r[5] = "2222220242222";
	r[6] = "2222220442222";
	return r[argument0];


}

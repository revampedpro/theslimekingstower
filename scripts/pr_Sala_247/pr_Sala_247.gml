function pr_Sala_247() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 1;
	var dleft   = 0;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 6;

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

	r[0] = "3211111111123";
	r[1] = "2111141110012";
	r[2] = "1142222441101";
	r[3] = "1114222224410";
	r[4] = "1111422222241";
	r[5] = "2111114222224";
	r[6] = "3201110002222";
	return r[argument0];


}

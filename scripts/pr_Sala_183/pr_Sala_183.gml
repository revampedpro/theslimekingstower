function pr_Sala_183() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 0;
	var dleft   = 0;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 2;

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

	r[0] = "43uvuvvuvu111";
	r[1] = "4uuuv1vvu3u00";
	r[2] = "4uuv11111v003";
	r[3] = "4uv1111111000";
	r[4] = "43uvuv1111003";
	r[5] = "4vuuvuvuv1v00";
	r[6] = "4v0uuuuvvv111";
	return r[argument0];


}

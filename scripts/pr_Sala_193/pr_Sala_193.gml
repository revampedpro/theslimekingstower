function pr_Sala_193() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 1;
	var dleft   = 0;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 3;

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

	r[0] = "14v1u0v4uu040";
	r[1] = "1v414u00uvv00";
	r[2] = "111v11uv414v4";
	r[3] = "v4v41v411u1u0";
	r[4] = "v44111141414u";
	r[5] = "v1140000411u0";
	r[6] = "0vv140000011u";
	return r[argument0];


}

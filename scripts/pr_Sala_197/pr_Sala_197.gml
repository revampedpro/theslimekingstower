function pr_Sala_197() {
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

	r[0] = "u4vuu4uvuvvu4";
	r[1] = "uvvvuuvuuu4uv";
	r[2] = "uvvuvvuuv440u";
	r[3] = "4v4uuuu4uvvu4";
	r[4] = "uvuv4uuuuu4vu";
	r[5] = "uvvu000004u4v";
	r[6] = "uu4u0303004u4";
	return r[argument0];


}

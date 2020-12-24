function pr_Sala_245() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 0;
	var dleft   = 0;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 5;

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

	r[0] = "uuu2211112223";
	r[1] = "0vvuu21111122";
	r[2] = "vv0vuuu211111";
	r[3] = "vvuv0vuu22111";
	r[4] = "uv0vuvvvu2u21";
	r[5] = "vuu0v0vuuuuu2";
	r[6] = "xvvuuuu0vvuvu";
	return r[argument0];


}

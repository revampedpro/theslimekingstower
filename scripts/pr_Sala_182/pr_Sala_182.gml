function pr_Sala_182() {
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

	r[0] = "22222uuvv1000";
	r[1] = "2222111110000";
	r[2] = "222u111100000";
	r[3] = "2uu1111100000";
	r[4] = "22uuuuuu10v00";
	r[5] = "222uuuvuv1000";
	r[6] = "222222uuuvv00";
	return r[argument0];


}

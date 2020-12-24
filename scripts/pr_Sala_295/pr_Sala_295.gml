function pr_Sala_295() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 1;
	var dleft   = 0;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 10;

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

	r[0] = "000vv000v0110";
	r[1] = "0u01111011u01";
	r[2] = "10100u010v010";
	r[3] = "01011000vu101";
	r[4] = "1v1uvv1011vv0";
	r[5] = "01v010v100u10";
	r[6] = "0011011000101";
	return r[argument0];


}

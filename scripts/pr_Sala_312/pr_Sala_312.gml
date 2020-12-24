function pr_Sala_312() {
	// Room designed by Manu
	// Date: 02/05/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 1;
	var dleft   = 1;
	var dright  = 1;
	var Room    = room_Bigger;
	var type    = 11;

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

	r[0] = "2220030300222";
	r[1] = "2F111111100H2";
	r[2] = "2110111110102";
	r[3] = "100111J111010";
	r[4] = "2111111111102";
	r[5] = "2G011011110I2";
	r[6] = "2220030300222";
	return r[argument0];


}

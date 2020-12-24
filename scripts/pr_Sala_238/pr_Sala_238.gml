function pr_Sala_238() {
	// Room designed by manu_movil
	// Date: 26/04/18
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

	r[0] = "311o001v02014";
	r[1] = "4110u11002111";
	r[2] = "1110110112013";
	r[3] = "01u1003012114";
	r[4] = "111o110u02110";
	r[5] = "1122222222103";
	r[6] = "v041001011114";
	return r[argument0];


}

function pr_Sala_306() {
	// Room designed by Manu
	// Date: 30/04/18
	// Version: 1.5

	var dup     = 0;
	var ddown   = 0;
	var dleft   = 1;
	var dright  = 1;
	var Room    = room_Inicial;
	var type    = 9;

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

	r[0] = "77777777777";
	r[1] = "BBBBBBBBBBB";
	r[2] = "0DBDBDBDBD0";
	r[3] = "DDDDDDDDDDD";
	r[4] = "88888888888";
	return r[argument0];


}

function pr_Sala_25() {
	// Sala creada por Manu
	// Date: 31/01/17
	var Room = room_Normal;
	var dup = 1;
	var ddown = 1;
	var dleft = 0;
	var dright = 0;
	var type = 10;
	if(argument_count > 1) {
	    switch(argument[1]) {
	        case 0: return dup;    break;
	        case 1: return ddown;  break;
	        case 2: return dleft;  break;
	        case 3: return dright; break;
	        case 4: return type; break; case 5: return Room; break;
	    }
	}
	var r = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"];
	r[0] = "uvvu000uuvu";
	r[1] = "vuu11111uuu";
	r[2] = "uvu11111uvu";
	r[3] = "uuu1111uvuu";
	r[4] = "uvuu000uvuu";
	return r[argument[0]];



}

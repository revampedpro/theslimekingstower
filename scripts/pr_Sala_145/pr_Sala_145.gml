function pr_Sala_145() {
	// Sala creada por Manu
	// Date: 01/02/17
	var Room = room_Normal;
	var dup = 1;
	var ddown = 0;
	var dleft = 1;
	var dright = 0;
	var type = 8;
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
	r[0] = "22222bbbbbb";
	r[1] = "22222e2eeeb";
	r[2] = "b222222222b";
	r[3] = "bdddddddddb";
	r[4] = "bbbbbbbbbbb";
	return r[argument[0]];



}

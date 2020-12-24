function pr_Sala_121() {
	// Sala creada por Manu
	// Date: 01/02/17
	var Room = room_Normal;
	var dup = 0;
	var ddown = 1;
	var dleft = 0;
	var dright = 1;
	var type = 6;
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
	r[0] = "22222222222";
	r[1] = "2222jjjjjbb";
	r[2] = "2222jjjjbbb";
	r[3] = "2222bbbbbbb";
	r[4] = "2222bbbbbbb";
	return r[argument[0]];



}

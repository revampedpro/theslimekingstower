function pr_Sala_138() {
	// Sala creada por Manu
	// Date: 01/02/17
	var Room = room_Normal;
	var dup = 0;
	var ddown = 1;
	var dleft = 1;
	var dright = 0;
	var type = 7;
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
	r[0] = "00000000000";
	r[1] = "02r2r2r2r2n";
	r[2] = "0222222222n";
	r[3] = "222222q2q2n";
	r[4] = "22222000000";
	return r[argument[0]];



}

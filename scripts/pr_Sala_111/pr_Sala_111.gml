function pr_Sala_111() {
	// Sala creada por Manu
	// Date: 01/02/17
	var Room = room_Normal;
	var dup = 1;
	var ddown = 0;
	var dleft = 0;
	var dright = 1;
	var type = 5;
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
	r[0] = "22240001222";
	r[1] = "22240001000";
	r[2] = "22241111000";
	r[3] = "22241111000";
	r[4] = "22244444222";
	return r[argument[0]];



}

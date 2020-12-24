function pr_Sala_107() {
	// Sala creada por Manu
	// Date: 01/02/17
	var Room = room_Normal;
	var dup = 0;
	var ddown = 0;
	var dleft = 0;
	var dright = 0;
	var type = 0;
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
	r[0] = "22222b22222";
	r[1] = "2jbbbbbbbj2";
	r[2] = "2jjbbbbbjj2";
	r[3] = "kjjjjjjjjjk";
	r[4] = "22222222222";
	return r[argument[0]];



}

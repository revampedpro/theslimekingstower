function pr_Sala_28() {
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
	r[0] = "2244v00u422";
	r[1] = "2onnnnnnno2";
	r[2] = "2onnnnnnno2";
	r[3] = "2onnnnnnno2";
	r[4] = "22uv0004u22";
	return r[argument[0]];



}

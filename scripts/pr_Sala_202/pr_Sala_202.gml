function pr_Sala_202() {
	// Room designed by manu_movil
	// Date: 26/04/18
	// Version: 1.5

	var dup     = 1;
	var ddown   = 0;
	var dleft   = 0;
	var dright  = 0;
	var Room    = room_Bigger;
	var type    = 1;

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

	r[0] = "0000000000000";
	r[1] = "1111100111100";
	r[2] = "u0vu1111uv111";
	r[3] = "0u0uuu111uuv1";
	r[4] = "uv0uv11v11vuv";
	r[5] = "0uv00v1u1vuv0";
	r[6] = "0v0uuu1vuu0uu";
	return r[argument0];


}

/// @description gp_map(device)
/// @function gp_map
/// @param device
function gp_map() {
	// Map a button to a function
	var btn, btn_r = -1;
	repeat(30) {
	    btn_r++;
	    switch(btn_r) {
	        case 0:  btn = gp_face1; break;
	        case 1:  btn = gp_face2; break;
	        case 2:  btn = gp_face3; break;
	        case 3:  btn = gp_face4; break;
	        case 4:  btn = gp_shoulderl; break;
	        case 5:  btn = gp_shoulderlb; break;
	        case 6:  btn = gp_shoulderr; break;
	        case 7:  btn = gp_shoulderrb; break;
	        case 8:  btn = gp_select; break;
	        case 9:  btn = gp_start; break;
	        case 10: btn = gp_stickl; break;
	        case 11: btn = gp_stickr; break;
	        case 12: btn = gp_padu; break;
	        case 13: btn = gp_padd; break;
	        case 14: btn = gp_padl; break;
	        case 15: btn = gp_padr; break;
	        case 16: return -1; break;       
	    }
	    if(gamepad_button_check_pressed(argument[0], btn)) return btn;
	}



}

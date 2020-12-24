/// @description gp_unassign_all()
/// @function gp_unassign_all
function gp_unassign_all() {
	// UnnLink all controllers
	for(__i = 0; __i < gamepad_get_device_count(); __i++) {
	    if(global.controllerID[__i]) global.controllerID[__i] = true;
	}

	obj_Jugador.controlledBy = -1;
	with(obj_LocalPlayer) controlledBy = -1;

	// No controller could be matched
	return false;



}

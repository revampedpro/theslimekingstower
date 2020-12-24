/// @description gp_assign(device)
/// @function gp_assign
/// @param device
function gp_assign() {
	// Link the controller to a player
	if(global.controllerID[argument[0]] == false) { global.controllerID[argument[0]] = true; return true; }

	// No controller could be matched
	return false;



}

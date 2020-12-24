/// @description gp_check_assigned(device)
/// @function gp_check_assigned
/// @param device
function gp_check_assigned() {
	// Checks if the device is assigned to a player
	if(global.controllerID[argument[0]] == true) return true;

	// Device unassigned
	return false;



}

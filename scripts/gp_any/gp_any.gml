/// @description gp_any(device)
/// @function gp_any
/// @param device
function gp_any() {
	// Check if any button has been pressed
	if(global.GP_UP != -1)          and (gamepad_button_check(argument[0],global.GP_UP))          return true;
	if(global.GP_DOWN != -1)        and (gamepad_button_check(argument[0],global.GP_DOWN))        return true;
	if(global.GP_LEFT != -1)        and (gamepad_button_check(argument[0],global.GP_LEFT))        return true;
	if(global.GP_RIGHT != -1)       and (gamepad_button_check(argument[0],global.GP_RIGHT))       return true;
	if(global.GP_SHOOT_UP != -1)    and (gamepad_button_check(argument[0],global.GP_SHOOT_UP))    return true;
	if(global.GP_SHOOT_DOWN != -1)  and (gamepad_button_check(argument[0],global.GP_SHOOT_DOWN))  return true;
	if(global.GP_SHOOT_LEFT != -1)  and (gamepad_button_check(argument[0],global.GP_SHOOT_LEFT))  return true;
	if(global.GP_SHOOT_RIGHT != -1) and (gamepad_button_check(argument[0],global.GP_SHOOT_RIGHT)) return true;
	if(global.GP_PAUSE != -1)       and (gamepad_button_check(argument[0],global.GP_PAUSE))       return true;
	if(global.GP_BOMB != -1)        and (gamepad_button_check(argument[0],global.GP_BOMB))        return true;
	if(global.GP_USE_ITEM != -1)    and (gamepad_button_check(argument[0],global.GP_USE_ITEM))    return true;
	if(global.GP_ACTION != -1)      and (gamepad_button_check(argument[0],global.GP_ACTION))      return true;
	return false;



}

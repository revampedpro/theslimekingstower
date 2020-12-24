/// @description challenge_check(id)
/// @function challenge_check
/// @param id
function challenge_check() {
	if(global.Modo_Challenge_Activo == true) {
	    if(global.Modo_Challenge == argument[0]) {
	        return true;
	    }
	}
	return false;



}

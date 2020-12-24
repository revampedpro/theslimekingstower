/// @description chp_experience()
/// @function chp_experience
function chp_experience() {
	// Perform the action pool of a mini chest
	repeat(irandom_range(6,10)) {
	    var _expOrb = instance_create(x, y, objExperienceOrb);
	    _expOrb.value = 5;
	}




}

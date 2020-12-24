/// @description find_little_one(id)
/// @function find_little_one
/// @param id
function find_little_one() {
	// Find if you have a little one
	for(lo = 0; lo < instance_number(obj_LittleMe); lo++) {
	    lo_ins = instance_find(obj_LittleMe,lo);
	    if(lo_ins.ID == argument[0]) return lo_ins;
	}
	return false;



}

/// @description chest_pools(id)
/// @function chest_pools
/// @param id
function chest_pools() {
	// Sets all options for the given pool
	switch(argument[0]) {

	    case "default":
	        return choose("mini");
	    break;

	    case "enemy":
	        return choose("mini","blue","bombs","keys");
	    break;
    
	    case "room":
	        return choose("gold","blue");
	    break;
    
	    case "secretroom":
	        return choose("gold","experience");
	    break;
	
		case "random":
	        return choose("mini","blue","bombs","keys","gold","experience");
		break;

	}




}

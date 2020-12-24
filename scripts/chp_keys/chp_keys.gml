/// @description chp_keys()
/// @function chp_keys
function chp_keys() {
	// Perform the action pool of a mini chest
	switch(irandom(2)) {
   
	    case 0:
	    case 1:
	        var i = instance_create(x, y, obj_Key);
	    break;
    
	    case 2:
	        repeat(2) {
	            var i = instance_create(x, y, obj_Key);
	        }
	    break;

	}




}

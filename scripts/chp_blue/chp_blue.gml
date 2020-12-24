/// @description chp_blue()
/// @function chp_blue
function chp_blue() {
	// Perform the action pool of a mini chest
	switch(irandom(10)) {
   
	    case 0:
	    case 1:
	        var i = instance_create(x, y, obj_TimeHeart);
	    break;
    
	    case 2:
	    case 3:
	        var i = instance_create(x, y, obj_SkullHeart);
	    break;
    
	    case 4:
	    case 5:
	        var i = instance_create(x, y, obj_ShieldHeart);
	    break;
    
	    case 6:
	    case 7:
	        var i = instance_create(x, y, obj_GoldHeart);
	    break;
    
	    case 8:
	    case 9:
	        var i = instance_create(x, y, obj_BatteryHeart);
	    break;
    
	    case 10:
	        repeat(2) {
	            var i = instance_create(x, y, choose(obj_TimeHeart,obj_SkullHeart,obj_ShieldHeart));
	        }
	    break;

	}




}

/// @description chp_mini()
/// @function chp_mini
function chp_mini() {
	// Perform the action pool of a mini chest
	switch(irandom(15)) {

	    case 0:
	    case 1:
	    case 2:
	        var i = instance_create(x, y, obj_Salud); 
	        var i = instance_create(x, y, obj_Salud); 
	    break;
    
	    case 3:
	    case 4:
	    case 5:
	    case 6:
	    case 7:
	        var i = instance_create(x, y, choose(obj_Key, obj_PickupBomb)); 
	    break;
    
	    case 8:
	    case 9:
	    case 10:
	        var i = instance_create(x, y, obj_Moneda); 
	        var i = instance_create(x, y, obj_Moneda); 
	    break;
    
	    case 11:
	        var i = instance_create(x, y, obj_Moneda); 
	        var i = instance_create(x, y, obj_Moneda); 
	        var i = instance_create(x, y, obj_Moneda); 
	        var i = instance_create(x, y, obj_Moneda); 
	        var i = instance_create(x, y, obj_Moneda); 
	    break;
    
	    case 12:
	        var i = instance_create(x, y, obj_TimeHeart); 
	    break;
    
	    case 13:
	        var i = instance_create(x, y, obj_SkullHeart); 
	    break;
    
	    case 14:
	        var i = instance_create(x, y, obj_ShieldHeart); 
	    break;
    
	    case 15:
	        var i = instance_create(x, y, obj_GoldHeart); 
	    break;

	}




}

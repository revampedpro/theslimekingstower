/// @description instance_nearest_notme(x,y,obj)
/// @param x
/// @param y
/// @param obj
function instance_nearest_notme(argument0, argument1, argument2) {
	//
	//  Returns the nearest instance to a given point,
	//  disregarding the calling instance.
	//
	//      x,y         position, real
	//      obj         object instance to find, real
	//
	//  GMLscripts.com/license
	{
	    instance_deactivate_object(self);
	    var n = instance_nearest(argument0, argument1, argument2);
	    instance_activate_object(self);
	    return n;
	}


}

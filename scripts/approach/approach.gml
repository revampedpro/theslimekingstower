/// @description approach(current, target, amount)
/// @function approach
/// @param current
/// @param  target
/// @param  amount
function approach(argument0, argument1, argument2) {
	/*
	 * Move a value towards a target value by a given amount.
	 *
	 * Example use:
	 * x = approach(x, target_x, 1); //< moves towards target by 1
	 */
	if (argument0 < argument1)
	{
	    return min(argument0+argument2, argument1); 
	}
	else
	{
	    return max(argument0-argument2, argument1);
	}



}

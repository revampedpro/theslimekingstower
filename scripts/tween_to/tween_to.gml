/// @description tween_to(src, to, amount)
/// @function tween_to
/// @param src
/// @param  to
/// @param  amount
function tween_to(argument0, argument1, argument2) {
	if(argument0 < argument1) argument0 += abs(argument0-argument1)/argument2;
	if(argument0 > argument1) argument0 -= abs(argument0-argument1)/argument2;
	return argument0;



}

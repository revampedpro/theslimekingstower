/// @description  premultiply_color(color,alpha)
/// @function  premultiply_color
/// @param color
/// @param alpha
function premultiply_color(argument0, argument1) {
	return make_color_rgb(
	round(color_get_red(argument0)*argument1),
	round(color_get_green(argument0)*argument1),
	round(color_get_blue(argument0)*argument1)
	);



}

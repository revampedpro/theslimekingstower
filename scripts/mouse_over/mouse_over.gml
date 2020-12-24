/// @define mouse_over
/// @param x1
/// @param y1
/// @param x2
/// @param y2
function mouse_over() {
	var mx = mouse_x;
	var my = mouse_y;
	if(mx > argument[0] and mx < argument[2]) {
		if(my > argument[1] and my < argument[3]) {
			return true;
		}
	}
	return false;


}

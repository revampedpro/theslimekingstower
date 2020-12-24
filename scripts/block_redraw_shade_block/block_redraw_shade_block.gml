function block_redraw_shade_block() {
	// Recalculate shadow of the block
	Luz = instance_nearest(x,y,obj_Light_Environment);
	Alpha = (distance_to_point(Luz.x+24,Luz.y+24)/global.Shadow_Distance)



}

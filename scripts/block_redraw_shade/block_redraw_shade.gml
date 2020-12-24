function block_redraw_shade() {
	// Recalculate all blocks shadows
	with(obj_Block_Caster){
	    Luz = instance_nearest(x,y,obj_Light_Environment);
	    Alpha = (distance_to_point(Luz.x+12,Luz.y+12)/global.Shadow_Distance)
	}



}

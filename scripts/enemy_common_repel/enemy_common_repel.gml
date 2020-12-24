/// @description Behaviour for enemies that only repel
/// @param other
function enemy_common_repel() {
	// Return true if you were repelled
	if((argument[0].AI == obj_Snake) or (argument[0].AI == obj_Shadow_Spawn) or (argument[0].AI == obj_Jefe_YellowSlime)) and (!global.Pausado) {
		var dir = point_direction(argument[0].x,argument[0].y,x,y);
		speed = 0.25;
		direction = dir;
		Velocidad_H += hspeed;
		Velocidad_V += vspeed;
		hspeed = 0;
		vspeed = 0;
		return true;
	}
	return false;


}

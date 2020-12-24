/// @description create_effect(x,y,sprite,anim_speed)
/// @function create_effect
/// @param x
/// @param y
/// @param sprite
/// @param anim_speed
function create_effect(argument0, argument1, argument2, argument3) {

	// Crea un efecto con los datos dados, el efecto termina cuando termina la animacion del sprite
	var FX = instance_create( argument0, argument1, fx_Sprite );
	FX.sprite_index = argument2;
	FX.image_speed = argument3;
	FX.depth = -y;
	return FX;



}

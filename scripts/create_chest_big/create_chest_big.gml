/// @description create_chest_big
/// @param x
/// @param y
/// @param itemID
function create_chest_big() {
	var _chest = instance_create(argument[0],argument[1],obj_Cofre_General);
	_chest.ID = argument[2];
	return _chest;


}

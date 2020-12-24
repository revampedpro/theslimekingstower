/// @description show_item_info(ID)
/// @function show_item_info
/// @param ID
function show_item_info() {
	if(instance_exists(objItemInfo)) {
	    with(objItemInfo) instance_destroy();
	}
	var __info = instance_create(310,168,objItemInfo);
	__info.icon = get_item(argument[0],3);
	__info.name = string(get_item(argument[0],2));
	__info.description = string(get_item(argument[0],8));
	__info.alarm[0] = 30;
	mouse_clear(mb_left);



}

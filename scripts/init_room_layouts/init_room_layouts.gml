/// @description ini_room_layouts()
/// @function ini_room_layouts
function init_room_layouts() {
	// Initiates all room layouts into a ds_list
	for(var __ir = 0; __ir < 16; __ir++) global.Room_Type[__ir]			= ds_list_create();
	for(var __ir = 0; __ir < 16; __ir++) global.Room_Type_Bigger[__ir]  = ds_list_create();
	for(__ir = 1; __ir<99999; __ir++) {
	    var Script = asset_get_index("pr_Sala_" + string(__ir));
	    if(Script == -1) break;
		var Room = script_execute(Script,-1,5);
	
		if(Room == room_Bigger) {
			ds_list_add(global.Room_Type_Bigger[script_execute(Script,-1,4)], __ir);
		} else {
			ds_list_add(global.Room_Type[script_execute(Script,-1,4)], __ir);	
		}
    
	}
	for(__ir = 0; __ir < 16; __ir++) if(ds_list_size(global.Room_Type[__ir])<=0)		ds_list_destroy(global.Room_Type[__ir]);
	for(__ir = 0; __ir < 16; __ir++) if(ds_list_size(global.Room_Type_Bigger[__ir])<=0) ds_list_destroy(global.Room_Type_Bigger[__ir]);



}

/// @description get_room(id,fila)
/// @function get_room
/// @param id
/// @param fila
function get_room(argument0, argument1) {

	// Selecciona una room segun la id proporcionada
	var Script = asset_get_index("pr_Sala_" + string(argument0));

	    // Debug
	    global.DEBUG_NOMBRE_SALA = "pr_Sala_" + string(argument0);
	    if( check_room("centro") == 2 ) global.DEBUG_NOMBRE_SALA = "Sala Inicial";
	    if( check_room("centro") == 3 ) global.DEBUG_NOMBRE_SALA = "Sala Jefe";
	    if( check_room("centro") == 4 ) global.DEBUG_NOMBRE_SALA = "Sala Tesoro";
	    if( check_room("centro") == 7 ) global.DEBUG_NOMBRE_SALA = "Sala Tienda";
	    if( check_room("centro") == 8 ) global.DEBUG_NOMBRE_SALA = "Sala Sacrificio";

	return script_execute(Script,argument1);



}

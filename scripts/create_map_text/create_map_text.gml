/// @description create_map_text(x,y,string,substring)
/// @function create_map_text
/// @param x
/// @param y
/// @param string
/// @param substring
function create_map_text(argument0, argument1, argument2, argument3) {

	// Crea un texto de mapa
	instance_destroy(fx_Letras_Mapa);
	var Text = instance_create( argument0, argument1, fx_Letras_Mapa );
	Text.Texto = string_upper(argument2);
	Text.Sub_Texto = string_upper(argument3);



}

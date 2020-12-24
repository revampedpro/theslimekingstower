/// @description goto_room(i,j)
/// @function goto_room
/// @param i
/// @param j
function goto_room(argument0, argument1) {

	// Salir si ya se esta en transicion
	//if(instance_exists(fx_Transition_Room)) exit;
	if(instance_exists(fxTransition2)) exit;

	// Carga y se mueve a la room correspondiente a las coordenadas dadas
	//var Transicion = instance_create(0,0,fx_Transition_Room);

	if(global.Quality >= 1) {
	    var Transicion = instance_create(0,0,fxTransition2);
	} else {
	    var Transicion = instance_create(0,0,fx_Transition_Room);
	}
	Transicion.i = argument0;
	Transicion.j = argument1;



}

// Saltar
xscale = 0.6;
yscale = 0.6;

Opcion++;
if(Opcion = Max_Opcion) {
	if(unlock) {
		// nothing	
	} else {
		Opcion = 0;
	}
}
if(Opcion > Max_Opcion) Opcion = 0;

//global.Quality = Opcion;
switch(Opcion) {
    case 0: menu_text = lang(56); break;
    case 1: menu_text = lang(57); break;
    case 2: menu_text = lang(58); break;
    case 3: menu_text = string_upper(lang(7042)); break;
}
//Seleccion++;
//if(Seleccion > 2) Seleccion = 0;
switch(Opcion) {
    case 0: control_Ranking.Modo = 0; obj_Menu_Boton_Tower.Seleccion = 0; control_Ranking.Tower = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Normal
    case 1: control_Ranking.Modo = 1; obj_Menu_Boton_Tower.Seleccion = 0; control_Ranking.Tower = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Endless
    case 2: control_Ranking.Modo = 2; obj_Menu_Boton_Tower.Seleccion = 0; control_Ranking.Tower = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Arcade
    case 3: control_Ranking.Modo = 3; obj_Menu_Boton_Tower.Seleccion = 0; control_Ranking.Tower = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Boss Rush
}
image_index = 1 + (Opcion*2);

/*
if(global.Comprobar_Primera_Vez == true)exit;
instance_create( 0, 0, fx_Transition_Out );
Activado = true;
*/

/* */
/*  */

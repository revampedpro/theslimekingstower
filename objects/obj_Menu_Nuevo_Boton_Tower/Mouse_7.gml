// Saltar
xscale = 0.6;
yscale = 0.6;

Opcion++;
if(Opcion = Max_Opcion) Opcion = 0;
//global.Quality = Opcion;
switch(Opcion) {
    case 0: menu_text = lang(5000); break;
    case 1: menu_text = lang(5001); break;
}
//Seleccion++;
//if(Seleccion > 2) Seleccion = 0;
switch(Opcion) {
    case 0: control_Ranking.Tower = 0; obj_Menu_Boton_Modo.Seleccion = 0; control_Ranking.Modo = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Tower
    case 1: control_Ranking.Tower = 1; obj_Menu_Boton_Modo.Seleccion = 0; control_Ranking.Modo = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Basement
}
image_index = 8;

/*
if(global.Comprobar_Primera_Vez == true)exit;
instance_create( 0, 0, fx_Transition_Out );
Activado = true;
*/

/* */
/*  */

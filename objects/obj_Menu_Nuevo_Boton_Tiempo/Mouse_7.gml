// Saltar
xscale = 0.6;
yscale = 0.6;

Opcion++;
if(Opcion = Max_Opcion) Opcion = 0;
//global.Quality = Opcion;
switch(Opcion) {
    case 0: menu_text = lang(52); break;
    case 1: menu_text = lang(53); break;
    case 2: menu_text = lang(55); break;
}
//Seleccion++;
//if(Seleccion > 2) Seleccion = 0;
switch(Opcion) {
    case 0: control_Ranking.r_Tiempo = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Hoy
    case 1: control_Ranking.r_Tiempo = 1; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Mes
    case 2: control_Ranking.r_Tiempo = 2; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Siempre
}
image_index = 1 + (Opcion*2);

/*
if(global.Comprobar_Primera_Vez == true)exit;
instance_create( 0, 0, fx_Transition_Out );
Activado = true;
*/

/* */
/*  */

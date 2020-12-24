// Saltar
xscale = 0.6;
yscale = 0.6;

Opcion++;
if(Opcion = Max_Opcion) Opcion = 0;
//global.Quality = Opcion;
switch(Opcion) {
    case 0: menu_text = lang(78); break;
    case 1: menu_text = lang(79); break;
    case 2: menu_text = lang(80); break;
}
//Seleccion++;
//if(Seleccion > 2) Seleccion = 0;
switch(Opcion) {
    case 0: control_Ranking.Dificultad = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Normal
    case 1: control_Ranking.Dificultad = 1; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Hard
    case 2: control_Ranking.Dificultad = 2; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Insane
}
image_index = 1 + (Opcion*2);

/*
if(global.Comprobar_Primera_Vez == true)exit;
instance_create( 0, 0, fx_Transition_Out );
Activado = true;
*/

/* */
/*  */

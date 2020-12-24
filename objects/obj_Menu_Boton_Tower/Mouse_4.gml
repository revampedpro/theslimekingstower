// Transicion a empezar el juego
//instance_create( 0, 0, fx_Transition_Out );
Activado = true;

// Pedir otros datos
Seleccion++;
if(Seleccion > 1) Seleccion = 0;
switch(Seleccion) {
    case 0: control_Ranking.Tower = 0; obj_Menu_Boton_Modo.Seleccion = 0; control_Ranking.Modo = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Tower
    case 1: control_Ranking.Tower = 1; obj_Menu_Boton_Modo.Seleccion = 0; control_Ranking.Modo = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Basement
}


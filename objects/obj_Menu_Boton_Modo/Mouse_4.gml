// Transicion a empezar el juego
//instance_create( 0, 0, fx_Transition_Out );
Activado = true;

// Pedir otros datos
Seleccion++;
if(Seleccion > 2) {
	if(unlock) {
		Seleccion = 3;	
	} else {
		Seleccion = 0;
	}
}
if(Seleccion > 3) Seleccion = 0;

switch(Seleccion) {
    case 0: control_Ranking.Modo = 0; obj_Menu_Boton_Tower.Seleccion = 0; control_Ranking.Tower = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Normal
    case 1: control_Ranking.Modo = 1; obj_Menu_Boton_Tower.Seleccion = 0; control_Ranking.Tower = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Endless
    case 2: control_Ranking.Modo = 2; obj_Menu_Boton_Tower.Seleccion = 0; control_Ranking.Tower = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Arcade
    case 3: control_Ranking.Modo = 3; obj_Menu_Boton_Tower.Seleccion = 0; control_Ranking.Tower = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Boss Rush
}


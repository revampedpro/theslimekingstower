// Transicion a empezar el juego
//instance_create( 0, 0, fx_Transition_Out );
Activado = true;

// Pedir otros datos
Seleccion++;
if(Seleccion > 2) Seleccion = 0;
switch(Seleccion) {
    case 0: control_Ranking.Dificultad = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Normal
    case 1: control_Ranking.Dificultad = 1; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Hard
    case 2: control_Ranking.Dificultad = 2; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Insane
}




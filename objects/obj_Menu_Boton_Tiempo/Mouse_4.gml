// Transicion a empezar el juego
//instance_create( 0, 0, fx_Transition_Out );
Activado = true;

// Pedir otros datos
Seleccion++;
if(Seleccion > 2) Seleccion = 0;
switch(Seleccion) {
    case 0: control_Ranking.r_Tiempo = 0; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Hoy
    case 1: control_Ranking.r_Tiempo = 1; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Mes
    case 2: control_Ranking.r_Tiempo = 2; with(control_Ranking) event_perform(ev_other, ev_user0); break; // Siempre
}


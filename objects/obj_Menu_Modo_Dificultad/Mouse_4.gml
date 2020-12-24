// Transicion a empezar el juego
//instance_create( 0, 0, fx_Transition_Out );
Activado = true;

// Pedir otros datos
Seleccion++;
if(Seleccion > 2) Seleccion = 0;
switch(Seleccion) {
    case 0: global.Modo_Dificultad = "Normal"; break; // Normal
    case 1: global.Modo_Dificultad = "Hard"; break; // Endless
    case 2: global.Modo_Dificultad = "Insane"; break; // Arcade
}

if(instance_exists(obj_Menu_Nuevo_Endless_Info)) {
    with(obj_Menu_Nuevo_Endless_Info) event_perform(ev_create, 0);
}


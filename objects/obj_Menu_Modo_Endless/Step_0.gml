// Cambiar de room
if( Activado = true and !instance_exists(fx_Transition_Out) ) {
    global.Modo_Juego = "Endless";
    room_goto(init_Game);
}


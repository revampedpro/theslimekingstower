/// @description  Accion despues de la transicion
if(os_is_network_connected()) {
    global.Modo_Juego = "Endless";
    global.Modo_Sub_Juego = "Daily";
    room_goto(room_DailyRun_Mode);
} else {
    show_message_async("Internet connection is needed for this gamemode");
    room_restart();
}


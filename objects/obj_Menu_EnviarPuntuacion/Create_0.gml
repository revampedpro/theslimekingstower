/// @description  Variables
Texto = "ENVIAR";
SubTexto = "PUNTUACION";
Align = "Centro";

// Enviar la puntuacion
if( os_is_network_connected() ) {
    with( control_GameOver ) event_perform( ev_other, ev_user0 );
}


/// @description  Accion despues de la transicion
if(!os_is_network_connected()) {
    show_message_async(lang(83));
    room_goto(room_Title);
}
get_string_async(lang(82), "");
Activado = false;
w = true;
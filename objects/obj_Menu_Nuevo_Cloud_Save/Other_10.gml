/// @description  Accion despues de la transicion
if(!os_is_network_connected()) {
    show_message_async(lang(83));
    room_goto(room_Title);
}

var URL = "http://37.187.20.198/skt1400/generate_token.php";
var ini = ini_to_base64();
post = http_post_string(URL, "ini="+string(ini));
Activado = false; 
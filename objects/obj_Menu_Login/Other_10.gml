/// @description  Accion despues de la transicion
audio_stop_all();

// Perform the login
if(get == -1) {
	var name = "";
	var pass = "";
	with(objTextbox) if(identifier == "name") name = text;
	with(objTextbox) if(identifier == "pass") pass = text;
	get = http_get(global.URL + "rpg/login.php?name=" + name + "&pass=" + pass);
}

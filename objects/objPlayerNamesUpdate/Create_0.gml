// Vars
if(os_is_network_connected()) {
	var URL = global.URL;
	request = http_get(URL + "get_names.php");
}
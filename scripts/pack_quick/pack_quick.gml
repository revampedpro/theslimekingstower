/// @description pack_quick
/// @param header
/// @param to_socket[opt]
function pack_quick() {
	var socket;
	if(argument_count == 1) {
		socket = global.SOCKET;
	} else {
		socket = argument[1];	
	}
	if(socket != -1) {
		pack_prepare(argument[0]);
		pack_send(socket);
	} else {
		return false;	
	}


}

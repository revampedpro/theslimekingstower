/// @description pack_send
/// @param socket
function pack_send() {
	if(argument[0] != -1) {
	
		// Remove the last separator (|) from the string
		global.PACKET_CONTENT = string_copy(global.PACKET_CONTENT,1,string_length(global.PACKET_CONTENT)-1); 
	
		// Write to the buffer
		buffer_write(pack_get(),buffer_string,global.PACKET_CONTENT);
	
		// Send the buffer (Javascript)
		pack_send_js(argument[0],pack_get());
	
		buffer_delete(pack_get());
	} else {
		return false;
	}



}

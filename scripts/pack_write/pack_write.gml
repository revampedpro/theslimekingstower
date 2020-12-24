/// @description pack_write
/// @param header
/// @param data
function pack_write() {
	if(argument_count > 1) { 
		global.PACKET_CONTENT += string(argument[0])+"|";
		global.PACKET_CONTENT += string(argument[1])+"|";
		global.PACKS++;
	} else {
		global.PACKET_CONTENT += string(argument[0])+"|";
		global.PACKS++;
	}


	// How does this work ?
	/*

		If the argument count is equal to 1 (only the header is sent) that means the data
		comes from a quick pack or is the msgID of the data that's is constant (for example:
		when kicking out a player only "playerKick" needs to be sent to the kicked player
		so there's no variation ergo no need for data.)

		If the argument count is geater thatn 2 (header + data are sent) that means that the
		first buffer contains the header and the second the data. So the interpreter would need to
		read the msgID (sent in pack_prepare) then read the header, then the data, then a new header,
		then a new data etc. This way the data received is linked to a header like in NodeJS so
		the interpreter can change easily from a Socket.IO server to a GM:S server to a Java server or
		whatever.

		PS: Quick packs don't follow these rules as the are send without a "pack_write" function.

	*/


}

/// @desc Equivalent to buffer_send for Javascript Server
/// @param socket
/// @param buffer
function pack_send_js() {

	// Initialize
	var packetSize   = buffer_tell(argument[1]);
	var bufferPacket = buffer_create(1, buffer_grow, 1);

	// Write size and packet into the new buffer
	buffer_write(bufferPacket, buffer_u8, packetSize + 1);
	buffer_copy(argument[1], 0, packetSize, bufferPacket, 1);
	buffer_seek(bufferPacket, 0, packetSize + 1);

	// Send the packet to the server
	network_send_raw(argument[0], bufferPacket, buffer_tell(bufferPacket));

	// Delete buffers
	buffer_delete(bufferPacket);








}

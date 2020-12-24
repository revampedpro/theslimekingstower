/// @description pack_send_5d
/// @param main_header
/// @param header1
/// @param data1
/// @param header2
/// @param data2
/// @param header3
/// @param data3
/// @param header4
/// @param data4
/// @param header5
/// @param data5
function pack_send_multi() {

	// Send a quick message with 2 "pack_write"
	pack_prepare(argument[0]);
	pack_write(argument[1],argument[2]);
	for(var i = 0; i < argument_count-3; i+=2) {
		pack_write(argument[i+3],argument[i+3+1]);
	}
	
	pack_send(global.SOCKET);


}

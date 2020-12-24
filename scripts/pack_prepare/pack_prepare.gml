/// @description pack_prepare
/// @param msgID
function pack_prepare() {
	pack_set(buffer_create(1,buffer_grow,1));
	buffer_seek(pack_get(),buffer_seek_start,0);
	pack_write(string(argument[0]));
	return pack_get();



}

/// @description ini_to_base64
/// Transforms the save.ini to base64
function ini_to_base64() {
	var tt = "";
	var f = file_text_open_read("save.ini");
	while(!file_text_eof(f)) {
		tt += file_text_read_string(f) + "{";
		file_text_readln(f);
	}
	file_text_close(f);
	var buff = buffer_create(1,buffer_grow,1);
	buffer_write(buff,buffer_text,tt);
	var enc = buffer_base64_encode(buff,0,buffer_get_size(buff));
	buffer_delete(buff);
	return enc;


}

/// @description base64_to_ini
/// @param string
function base64_to_ini() {
	// Converts a base64 string to a save.ini file

	// Decode string
	var bb = string(argument[0]);
	if(bb == "no") exit;
	var b = base64_decode(bb);

	// Explode string
	string_explode(b,"{");

	// Create new .ini from the exploded string
	var c = string_count("{",b);
	var f = file_text_open_write("save.ini");
	for(var i = 0; i < c; i++) {
		file_text_write_string(f,string(level[i]));
		file_text_writeln(f);
	}
	file_text_close(f);

	return b;


}

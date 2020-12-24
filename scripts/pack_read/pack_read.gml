/// @description pack_read
/// @param buffer
function pack_read() {
	// Returns a map filled with the pack data or true if it's a quick message

	// Vars
	var buffer = argument[0];

	// Read the buffer and add it's content to a map
	var bf_map  = ds_map_create();
	var bf_size	= buffer_peek(buffer,buffer_get_size(buffer)-1,buffer_u8);
	if(bf_size > 1) {
		repeat(bf_size-1) {
			var bf_header	= string(buffer_read(buffer,buffer_string));
			var bf_content	= string(buffer_read(buffer,buffer_string));
			bf_map[? bf_header] = bf_content;
		}
	} else {
		ds_map_destroy(bf_map);
		return true;	
	}

	return bf_map;


}

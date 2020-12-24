// Receive data from the server
switch(async_load[? "type"]) {

	case network_type_data:
	
		var _buffer = async_load[? "buffer"];
		var _size = buffer_get_size(_buffer);
		
			//file_text_write_string(f,"_size is: " + string(_size));
			//file_text_writeln(f);
			
		traffic += real(_size);
		
		buffer_copy(_buffer, 0, _size, savedBuffer, buffer_tell(savedBuffer));
		buffer_seek(savedBuffer, buffer_seek_relative, _size + 2);	
	
		/*
		var b = "";
		var deb_s = buffer_get_size(savedBuffer);
		buffer_copy(savedBuffer,0,deb_s,debBuffer,0);
		repeat(deb_s) {
			b += string(buffer_read(debBuffer,buffer_u8));
		}
		buffer_resize(debBuffer,1);
		file_text_write_string(f,string(b));
		
		file_text_writeln(f);
		*/
	
		var force_exit = 0;
		while(true) {
			
			force_exit++;
			if(force_exit > 50000) { 
				buffer_seek(savedBuffer, buffer_seek_start, 0);	
				show_message_async("Data Overflow." + string(buffer_read(savedBuffer, buffer_string))); 
				//file_text_close(f);
				game_end(); 
			}
			
			var size = buffer_peek(savedBuffer, 0, buffer_u16);
			
			if(buffer_get_size(savedBuffer) >= size) {
				
				buffer_copy(savedBuffer, 0, size, cutBuffer, 0);
				buffer_seek(cutBuffer, 0, 2);
				
				var header = buffer_read(cutBuffer, buffer_string);
				var data   = buffer_read(cutBuffer, buffer_string);
				var pass_map = ds_map_create();

				string_explode(data,"|");
				for(var i = 0; i < string_count("|",data); i+=2) {
					pass_map[? string(level[i])] = string(level[i+1]);
				}
				
				pack_listen_client(header,pass_map);
				
				
				// New
				if(buffer_get_size(savedBuffer) > size) {
					buffer_resize(cutBuffer,1);
					buffer_copy(savedBuffer, size, buffer_get_size(savedBuffer)-size, cutBuffer,   0);
					buffer_resize(savedBuffer,1);
					buffer_copy(cutBuffer,	    0,   buffer_get_size(cutBuffer), savedBuffer, 0);
				} else {
					buffer_resize(savedBuffer,1);
					buffer_seek(savedBuffer,buffer_seek_start,0);
					break;
				}
				buffer_seek(savedBuffer,buffer_seek_start,0);
				
				/*
				if(buffer_get_size(savedBuffer) != reading + size) {
					reading += size;	
				} else {
					buffer_resize(savedBuffer,1);
					reading = 0;
					break;
				}
				*/
				
			} else {
				break;	
			}
			
		}
	
	break;
	
}




/** U8
// Receive data from the server
switch(async_load[? "type"]) {

	case network_type_data:
	
		var _buffer = async_load[? "buffer"];
		var _size = buffer_get_size(_buffer);
		
		traffic += real(_size);
		
		buffer_copy(_buffer, 0, _size, savedBuffer, buffer_tell(savedBuffer));
		buffer_seek(savedBuffer, buffer_seek_relative, _size + 1);	
	
		var force_exit = 0;
		while(true) {
			
			force_exit++;
			if(force_exit > 50000) { 
				buffer_seek(savedBuffer, buffer_seek_start, 0);	
				show_message_async("Data Overflow." + string(buffer_read(savedBuffer, buffer_string))); 
				game_end(); 
			}
			
			var size = buffer_peek(savedBuffer, reading, buffer_u8);
			
			if(buffer_get_size(savedBuffer) >= reading + size) {
				
				buffer_copy(savedBuffer, reading, size, cutBuffer, 0);
				buffer_seek(cutBuffer, 0, 1);
				
				var header = buffer_read(cutBuffer, buffer_string);
				var data   = buffer_read(cutBuffer, buffer_string);
				var pass_map = ds_map_create();

				string_explode(data,"|");
				for(var i = 0; i < string_count("|",data); i+=2) {
					pass_map[? string(level[i])] = string(level[i+1]);
				}
				
				pack_listen_client(header,pass_map);
				
				if(buffer_get_size(savedBuffer) != reading + size) {
					reading += size;	
				} else {
					buffer_resize(savedBuffer,1);
					reading = 0;
					break;
				}
				
			} else {
				break;	
			}
			
		}
	
	break;
	
}


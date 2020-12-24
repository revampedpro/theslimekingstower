/// @description cloud_save_ini
function cloud_save_ini() {
	// Send you .ini to the cloud
	cloud_file_save("save.ini","Save File");
	/*
	var gid = global.GOOGLEID; // Google ID
	var sid = global.STEAMID;  // Steam ID

	switch(os_type) {
		case os_windows:
			if(sid == -1) {
				return false;
			}
			break;
		
		case os_android:
			if(gid == -1) {
				return false;
			}
			break;
	}

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
	var enc_gid = (string(gid));
	var enc_sid = (string(sid));
	http_post_string(global.URL+"ini_save.php","ini="+string(enc)+"&gid="+string(enc_gid)+"&sid="+string(enc_sid));
	return true;





/* end cloud_save_ini */
}

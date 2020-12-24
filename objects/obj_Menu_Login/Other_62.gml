// Receive login feedback
var result = "";
var success = false;
if(ds_map_find_value(async_load, "id") == get) {
	result = ds_map_find_value(async_load, "result");
	success = true;
}

// Check if the data isn't zero
if(string(result) == "0") success = false;

// Login
if(success == true) {
	
	room_goto(room_Title);
	
} else {

	show_message_async("User doesn't exists or user/pass don't match. Please try again.");
	room_restart();
	
}
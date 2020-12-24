/// @description create_textbox
/// @param x
/// @param y
/// @param string
function create_textbox() {
	var box = instance_create(argument[0],argument[1],control_Chatbox);
	box.text_to = argument[2];
	return box;


}

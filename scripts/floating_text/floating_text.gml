/// @description floating_text(x,y,string,color,outline)
/// @function floating_text
/// @param x
/// @param y
/// @param string
/// @param color
/// @param outline
function floating_text() {

	// Create text
	var float = instance_create(argument[0],argument[1],fx_FloatingText);
	float.color = argument[3];
	float.text = argument[2];
	float.outline = argument[4];
	float.depth = -900;

	// Tell your partner about this text
	if(network_is_online()) and (global.NETWORK_HOST == true) {
		pack_send_multi("floatingText","x",float.x,"y",float.y,"color",float.color,"text",float.text,"outline",float.outline);	
	}

	// Return text instance
	return float;



}

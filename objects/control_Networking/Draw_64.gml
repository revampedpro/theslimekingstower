// Debug
if(network_is_online()) {
	draw_set_font(font_SmallHitBox_Smaller);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_outline(20,80,"NETWORK CONNECTED");
	draw_text_outline(20,100,"NETID: " + string(global.NETID));
	draw_text_outline(20,120,"HOST: " + string(global.NETWORK_HOST));	
}
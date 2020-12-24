// Draw
var w = wave(-0.05,0.05,2,0);
draw_sprite_ext(sprite_index,stat,x,y,image_xscale+w,image_yscale-w,image_angle,image_blend,alpha);

// Text
var text = "";
switch(stat) {
	case 0: text = "DMG+";  break;
	case 1: text = "HP+";   break;
	case 2: text = "RATE+"; break;
}
var w = wave(-2,2,2,0);
draw_set_font(fontChat2);
draw_set_halign(fa_middle);
draw_set_alpha(alpha);
draw_text_outline_width(x,y-22+w,text,2);
draw_set_alpha(1);
if(instance_exists(obj_Jugador)) {
	if(stat == 1) {
		draw_text_outline_width(x,y+18,string(obj_Jugador.stats) + " " + stat_text,2);
	}
}

// Controller
draw_set_font(fontChat2);
if(devices > 0) {
	if(stat == 1) {
		draw_text_outline_width(x,y-50+w,"PRESS <ACTION> + BUTTON",2)
	}
	switch(stat) {
		case 0: draw_sprite(sprControllerButtonsUI,0,x,y+w-32); break;
		case 1: draw_sprite(sprControllerButtonsUI,1,x,y+w-32); break;
		case 2: draw_sprite(sprControllerButtonsUI,2,x,y+w-32); break;
	}
}
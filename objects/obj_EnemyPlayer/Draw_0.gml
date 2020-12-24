
// Dibujar cuerpo
var Blend = image_blend;
if(alarm[11] > 0 ) Blend = c_gray; // Congelado
if(champion_xscale > 1) Blend = champion_color;

draw_sprite_ext( sprite_index, image_index, x, y, champion_xscale * xscale * image_xscale, champion_yscale * yscale * image_yscale, image_angle, Blend, image_alpha );

// Flash de golpe
if(alarm[2] > 0) {
    d3d_set_fog( 1, make_color_rgb(255,100,100), 0, 0 );
    draw_sprite_ext( sprite_index, image_index, x, y, champion_xscale * xscale * image_xscale, champion_yscale * yscale * image_yscale, image_angle, Blend, image_alpha );
    d3d_set_fog( 0, c_white, 0, 0 );
}

// Draw name
draw_set_font(fontChat2);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
draw_set_color(c_black);
	//draw_text_transformed(x-1,y-1-12,string(name),.5,.5,0);
	//draw_text_transformed(x-1,y+1-12,string(name),.5,.5,0);
	//draw_text_transformed(x+1,y-1-12,string(name),.5,.5,0);
	//draw_text_transformed(x+1,y+1-12,string(name),.5,.5,0);
	draw_text_transformed(x+1,y-12,  string(name),.5,.5,0);
	draw_text_transformed(x-1,y-12,  string(name),.5,.5,0);
	draw_text_transformed(x,  y+1-12,string(name),.5,.5,0);
	draw_text_transformed(x,  y-1-12,string(name),.5,.5,0);
draw_set_color(c_white);
draw_text_transformed(x,y-12,string(name),.5,.5,0);

action_inherited();

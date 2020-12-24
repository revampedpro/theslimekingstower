// Vars
var Blend = image_blend;
if(alarm[11] > 0) Blend = c_gray; // Congelado

// Jumping Enemy
if(Altura > 0) {
	
	/// Dibujarse
	draw_sprite_ext(spr_Sombras,0,x,y,image_xscale*(1-(Altura/80)),image_yscale*(1-(Altura/80)),0,c_black,0.3);
	draw_sprite_ext(sprite_index, image_index,x,y-Altura,image_xscale,image_yscale,0,Blend,image_alpha);

	// Flash de golpe
	if(alarm[2] > 0) {
	    d3d_set_fog(1,make_color_rgb(255,100,100),0,0);
	    draw_sprite_ext(sprite_index, image_index,x,y-Altura,image_xscale,image_yscale,0,Blend,image_alpha);
	    d3d_set_fog(0,c_white,0,0);
	}
}

// Ground enemy
if(Altura == 0) {
	
	// Draw self
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,Blend,image_alpha);

	// Flash de golpe
	if(alarm[2] > 0) {
		d3d_set_fog(1,flashColor,0,0);
		draw_self();
		d3d_set_fog(0,c_white,0,0);
	}
	
}

// Action
if(actionTime > actionTimeMax/2) {
    var myAlpha = (actionTime-(actionTimeMax/2))/(actionTimeMax/2)
    d3d_set_fog(1, actionColor, 0, 0);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, myAlpha);
    d3d_set_fog(0, c_white, 0, 0);
}

// HP bar
if(hpVisible) and (image_alpha > 0.1) {
	draw_set_color(c_black);
	draw_roundrect(bbox_left, bbox_bottom, bbox_right, bbox_bottom+3,0);
	draw_set_color(c_red);
	draw_roundrect(bbox_left, bbox_bottom+1, bbox_left + (bbox_right-bbox_left)*(hp/hpMax), bbox_bottom+2,0);
}
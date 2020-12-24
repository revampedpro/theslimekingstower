
// Dibujar cuerpo
var Blend = image_blend;
if(alarm[11] > 0 ) Blend = c_gray; // Congelado
if(champion_xscale > 1) Blend = champion_color;

if(real(ID) == enemies.ghost_slime) {
	var target = obj_Jugador;
	if(network_is_online() and network_is_host()) {
		target = instance_nearest(x,y,parent_Jugador);	
	}
	if(distance_to_object(target)<60) {
		image_alpha = min(1,(60-distance_to_object(target))/60);
	} else {
		image_alpha = 0;	
	}	
		
	// Tell partner
	if(network_is_online() and network_is_host()) {
		pack_send_multi("enemyAlpha","netid",netid,"alpha",image_alpha);	
	}
}

draw_sprite_ext( sprite_index, image_index, x, y, champion_xscale * xscale * image_xscale, champion_yscale * yscale * image_yscale, image_angle, Blend, image_alpha );

// Flash de golpe
if(alarm[2] > 0) {
    d3d_set_fog( 1, make_color_rgb(255,100,100), 0, 0 );
    draw_sprite_ext( sprite_index, image_index, x, y, champion_xscale * xscale * image_xscale, champion_yscale * yscale * image_yscale, image_angle, Blend, image_alpha );
    d3d_set_fog( 0, c_white, 0, 0 );
}

action_inherited();


// Normal drawing
if(alarm[4] < 0) {

	// Draw shadow
	draw_sprite_ext(spr_Sombras,1,x,y+8+8*obj_Jugador.Flying,1-(0.25*obj_Jugador.Flying),1-(0.25*obj_Jugador.Flying),image_angle,c_black,0.3);

	// Draw wings
	if(obj_Jugador.Flying) and (image_Direction != 3) {    
	    wings_index += 0.2;
	    if(wings_index > 6) wings_index = 0;
	    draw_sprite_ext(sprWings, wings_index, x - (4*(image_Direction == 1)) + (4*(image_Direction == 2)), y, image_xscale, image_yscale, image_angle + (90*(image_Direction == 1)) + (270*(image_Direction == 2)), image_blend, image_alpha);
	}
    
	// Draw Body
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	// Flash de golpe
	if(alarm[2] > 0) {
	    d3d_set_fog(1,flashColor,0,0);
	    draw_self();
	    d3d_set_fog(0,c_white,0,0);
	}

} else { // Showing item
	
	// Update show item ID
    if(ShowItemID != Show_Item_ID) {
        ShowItemID = get_item(Show_Item_ID,3);
    }

	// Draw shadow
	draw_sprite_ext(spr_Sombras,1,x,y+8+8*obj_Jugador.Flying,1-(0.25*obj_Jugador.Flying),1-(0.25*obj_Jugador.Flying),image_angle,c_black,0.3);

	// Draw wings
	if(obj_Jugador.Flying) and (image_Direction != 3) {    
	    wings_index += 0.2;
	    if(wings_index > 6) wings_index = 0;
	    draw_sprite_ext(sprWings, wings_index, x - (4*(image_Direction == 1)) + (4*(image_Direction == 2)), y, image_xscale, image_yscale, image_angle + (90*(image_Direction == 1)) + (270*(image_Direction == 2)), image_blend, image_alpha);
	}
    
	// Draw player showing item
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    if(ShowItemID > -1) draw_sprite_ext(ShowItemID, -1, x+6, y-10 - 12, 1, 1, image_angle, image_blend, image_alpha);

    // Flash de golpe
    if(alarm[2] > 0) {
        d3d_set_fog(1,flashColor,0,0);
        draw_self();
        draw_sprite(ShowItemID,image_index,x,y-14);
        d3d_set_fog(0,c_white,0,0);
    }
		
}

// Draw wings
if(obj_Jugador.Flying) and (image_Direction == 3) {    
    wings_index += 0.2;
    if(wings_index > 6) wings_index = 0;
    draw_sprite_ext(sprWings, wings_index, x, y + 0, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

// Dibujar friends
var has_glue = player_has_item(302);
var fl = min(6,array_length_1d(obj_Jugador.Friends));
for(var ff = 0; ff < fl; ff++ ) {
    if(obj_Jugador.Friends[ff] != -1) {
        var ffr = (obj_Jugador.Friends_R + ff*360/fl)*!has_glue;
        var ffx = x+20*(cos(degtorad(ffr)));
        var ffy = y-20*(sin(degtorad(ffr)));
        if(obj_Jugador.FriendsSPR[ff] == -1) obj_Jugador.FriendsSPR[ff] = get_item(obj_Jugador.Friends[ff],3);
        draw_sprite_ext(obj_Jugador.FriendsSPR[ff], 0, ffx, ffy, .75, .75, 0, c_white, 1);
        with(parent_Enemigo) {
            var OX = ffx;
            var OY = ffy;
            if(point_distance(OX, OY, x, y) < 10) and (alarm[2]<0) {
                HP-=(2 + has_glue);
                var f = floating_text(x-4+random(8), y-4+random(8), string((2 + has_glue)), make_color_rgb(255, 20, 20), true);
				f.alarm[0] = 60;
                if(HP <= 0) instance_destroy();
                alarm[2] = 2;
            }
        }
    }
}

// Draw Deodorant
if(player_has_item(240)) {
    draw_set_color(c_lime);
    draw_set_alpha(0.7);
    draw_circle(x,y,32,1);
    draw_set_alpha(1);
}
with(control_Dungeon) {
	var big_room_list = ds_list_create();
    var Alpha = 0;
    var Alpha_Min = 0.5;
    Dungeon_Visitado[global.Posicion_i,global.Posicion_j] = 1;
    var mx = 80;
    var my = 110;
	var min_x = 999;
	var min_y = 999;
	var max_x = 0;
	var max_y = 0;
	var sep = 19;
	var seph = 15;
    draw_sprite_ext(spr_UI_MapContainerBig, 0, mx+6, my+6, 2*other.xScale, 2*other.yScale, 0, -1, 1);
    if(global.Modo_Juego != "Arcade") {
		
		// Get boundaries
        for(i = 0; i < Dungeon_Ancho; i++) {
            for(j = 0; j < Dungeon_Alto; j++) {
                var dx = i;
                var dy = j;
				if(Dungeon[dx,dy] != 0) {
					if(min_x > dx) min_x = dx
					if(min_y > dy) min_y = dy	
					if(max_x < dx) max_x = dx
					if(max_y < dy) max_y = dy	
				}
			}
		}
		if((min_x + (max_x - min_x)) < 10) min_x -= (max_x - min_x)/2;
		if((min_y + (max_y - min_y)) < 11) min_y -= (max_y - min_y)/2;
		min_x *= sep; 
		min_y *= seph;
		max_x *= sep; 
		max_y *= seph;
		
		// Draw corridors
        for(i = 0; i < Dungeon_Ancho; i++) {
            for(j = 0; j < Dungeon_Alto; j++) {
				
                var dx = i;
                var dy = j;
				
                Alpha_Min = 0.5;
                if(dx >= 0 and dx < Dungeon_Ancho) {
                    if(dy >= 0 and dy < Dungeon_Alto) {
			            Alpha = 0;
			            if(Dungeon_Visitado[clamp(dx+1,0,Dungeon_Ancho-1),dy] = 2) Alpha = Alpha_Min;
			            if(Dungeon_Visitado[clamp(dx-1,0,Dungeon_Ancho-1),dy] = 2) Alpha = Alpha_Min;
			            if(Dungeon_Visitado[dx,clamp(dy+1,0,Dungeon_Alto-1)]  = 2) Alpha = Alpha_Min;
			            if(Dungeon_Visitado[dx,clamp(dy-1,0,Dungeon_Alto-1)]  = 2) Alpha = Alpha_Min;                        
			            if(Dungeon_Visitado[dx,dy] = 1) Alpha = 1; 
			            if(Dungeon[dx,dy] == 21) { Alpha_Min = 0; Alpha = 0; }
			
						var u = 0;
						var l = 0;
						var r = 0;
						var d = 0;
						var idx = 2;
						u = ((dy-1 > 0)			        and (Dungeon[dx,dy-1] != 0) and (Dungeon[dx,dy-1] != 21));
						l = ((dx-1 > 0)			        and (Dungeon[dx-1,dy] != 0) and (Dungeon[dx-1,dy] != 21));
						d = ((dy+1 < Dungeon_Alto-1)    and (Dungeon[dx,dy+1] != 0) and (Dungeon[dx,dy+1] != 21));
						r = ((dx+1 < Dungeon_Ancho-1)   and (Dungeon[dx+1,dy] != 0) and (Dungeon[dx+1,dy] != 21));
				
						// vertical corridor
						if( u &&  d && !r && !l) idx = 4;
						if( u && !d && !r && !l) idx = 3;
						if(!u &&  d && !r && !l) idx = 5;
				
						// horizontal corridor
						if(!u && !d &&  r &&  l) idx = 7;
						if(!u && !d && !r &&  l) idx = 6;
						if(!u && !d &&  r && !l) idx = 8;
				
						// Corners
						if( u && !d &&  r && !l) idx = 13;
						if( u && !d && !r &&  l) idx = 11;
						if(!u &&  d &&  r && !l) idx = 10;
						if(!u &&  d && !r &&  l) idx = 12;
				
						// three ways
						if(!u &&  d &&  r &&  l) idx = 14;
						if( u && !d &&  r &&  l) idx = 17;
						if( u &&  d &&  r && !l) idx = 15;
						if( u &&  d && !r &&  l) idx = 16;
				
						// All open
						if( u &&  d &&  r &&  l) idx = 9;
								
			            if(Dungeon[dx,dy] != 0) and (Dungeon[dx,dy] != 21) {
			                if(map_revealed and Dungeon_Visitado[dx,dy] = 0) {
			                    draw_sprite_ext(spr_UI_Map, idx-1,  mx+6-min_x+i*(sep), mx+6-min_y+j*seph, 2, 2, 0, c_white, Alpha_Min);
			                } else {
			                    if(Alpha > 0) draw_sprite_ext(spr_UI_Map, idx-1,  mx+6-min_x+i*(sep), mx+6-min_y+j*seph, 2, 2, 0, c_white, Alpha);
			                }
			            }
					}
				}
			
			}
		}
		
		
        for(i = 0; i < Dungeon_Ancho; i++) {
            for(j = 0; j < Dungeon_Alto; j++) {
                var dx = i;
                var dy = j;
                Alpha_Min = 0.5;
                if(dx >= 0 and dx < Dungeon_Ancho) {
                    if(dy >= 0 and dy < Dungeon_Alto) {
                        Alpha = 0;
                        if(Dungeon_Visitado[clamp(dx+1,0,Dungeon_Ancho-1),dy] = 1) Alpha = Alpha_Min;
                        if(Dungeon_Visitado[clamp(dx-1,0,Dungeon_Ancho-1),dy] = 1) Alpha = Alpha_Min;
                        if(Dungeon_Visitado[dx,clamp(dy+1,0,Dungeon_Alto-1)]  = 1) Alpha = Alpha_Min;
                        if(Dungeon_Visitado[dx,clamp(dy-1,0,Dungeon_Alto-1)]  = 1) Alpha = Alpha_Min;
                                                
                        if(Dungeon_Visitado[dx,dy] = 1) Alpha = 1; 
                        if(Dungeon[dx,dy] == 21 and Dungeon_Visitado[dx,dy] == false) { Alpha_Min = 0; Alpha = 0; }
                        if(Dungeon[dx,dy] != 0) {
                            if(map_revealed and Dungeon_Visitado[dx,dy] == 0) {
                                draw_sprite_ext(spr_UI_Map_Icons, Dungeon[dx,dy],  mx+6-min_x+i*(sep), mx+6-min_y+j*seph, 2, 2, 0, c_white, Alpha_Min);
                            } else {
                                if(Alpha > 0) draw_sprite_ext(spr_UI_Map_Icons, Dungeon[dx,dy],  mx+6-min_x+i*(sep), mx+6-min_y+j*seph, 2, 2, 0, c_white, Alpha);
                            }
                        }
						
						var big_room_type = 0;
						var big_room_alpha = 0;
		                if(Dungeon[dx,dy] != 0) {
		                    if(map_revealed and Dungeon_Visitado[dx,dy] = 0) {
								big_room_type = 1;
								big_room_alpha = Alpha_Min;
		                        draw_sprite_ext(spr_UI_Map_Icons, Dungeon[dx,dy],  mx+6-min_x+i*(sep), mx+6-min_y+j*seph, 2, 2, 0, c_white, Alpha_Min);
		                    } else {
								big_room_type = 2;
								big_room_alpha = Alpha;
		                        if(Alpha > 0) draw_sprite_ext(spr_UI_Map_Icons, Dungeon[dx,dy],  mx+6-min_x+i*(sep), mx+6-min_y+j*seph, 2, 2, 0, c_white, Alpha);
		                    }
		                }
						
						// Note down big rooms
						if(Dungeon[dx,dy] == 29) {
							var m = ds_map_create();
							m[? "x"] = mx+6-min_x+i*(sep);
							m[? "y"] = mx+6-min_y+j*seph;
							m[? "t"] = big_room_type;
							m[? "a"] = big_room_alpha;
							ds_list_add(big_room_list,m);
						}
                    }
                }
            }
        }
    }

	// Draw bigger dungeons
	var l = ds_list_size(big_room_list);
	for(var i = 0; i < l; i++) {
		var m = big_room_list[| i];
		if(m[? "t"] == 1) draw_sprite_ext(spr_UI_Map_Icons, 29,  m[? "x"], m[? "y"], 2, 2, 0, c_white, m[? "a"]);
		if(m[? "t"] == 2) draw_sprite_ext(spr_UI_Map_Icons, 29,  m[? "x"], m[? "y"], 2, 2, 0, c_white, m[? "a"]);
		ds_map_destroy(m);
	}
	ds_list_destroy(big_room_list);

	// Draw my position
	for(i = 0; i < Dungeon_Ancho; i++) {
	    for(j = 0; j < Dungeon_Alto; j++) {
	        var dx = i;
	        var dy = j;
			if(dx = global.Posicion_i and dy = global.Posicion_j) and ((Dungeon[dx,dy] == 1) or (Dungeon[dx,dy] == 29)) draw_sprite_ext(spr_UI_Map_Icons, 20, mx+6-min_x+i*(sep), mx+6-min_y+j*seph, 2, 2, 0, c_white, 1);
		}
	}
	
}

// Draw seed
draw_set_halign(fa_left);
draw_set_color(make_color_rgb(65,65,65));
draw_text_outline_soft(mx + 20, my + 130 + 50*yScale, seed_text + string(global.UNIQUE_MAP_SEED - (global.Mapa_Tipo-1)));
draw_set_halign(fa_left);


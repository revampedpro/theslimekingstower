// Un pause on room change
global.Pausado = false;
with(obj_Boton_Opciones_Ingame_Reiniciar) instance_destroy();
with(obj_UI_Map) instance_destroy();
room_easing = 0.25;

// PREPARE MAP
// 1.5 VERSION
if(!instance_exists(obj_Jugador))exit;
var Separacion = 14;

// Fondo del minimapa
draw_set_alpha(0.3);
draw_set_color(c_black);
draw_sprite_ext(spr_UI_MapContainer, 0, 550, 18+0, 2, 2, 0, -1, 1);
draw_set_alpha(1);      

// Get big rooms
var big_room_list = ds_list_create();

// Easings
var wav = wave(0.90,1.10,1.5,0);
var re = 1;
if(room_easing < 1) room_easing += 0.015; else room_easing = 1;
var re = ease("easeoutback",room_easing);

// Draw map icons
var Alpha = 0;
var Alpha_Min = 0.5;
Dungeon_Visitado[global.Posicion_i,global.Posicion_j] = 1;
var mx = 540;
var my = 6+0;
var sep = 19;
var seph = 15;

// Clear dungeon map
var _ss = ds_list_size(global.Dungeon_Map);
for(var i = 0; i < _ss; i++) {
	ds_map_destroy(global.Dungeon_Map[| i]);	
}
ds_list_clear(global.Dungeon_Map);

if(global.Modo_Juego != "Arcade") and (global.Modo_Juego != "BossRush")  {
	
	// Draw corridors
	for(var i = 0; i < 5; i++) {
	    for(var j = 0; j < 5; j++) {
                
            Alpha = 0;
	        Alpha_Min = 0.5;
			
	        var dx = global.Posicion_i - 2 + i;
	        var dy = global.Posicion_j - 2 + j;
			
			if(dx >= 0 and dx < Dungeon_Ancho) {
                if(dy >= 0 and dy < Dungeon_Alto) {
					
					
	                if(Dungeon_Visitado[clamp(dx+1,0,Dungeon_Ancho-1),dy] = 2) Alpha = Alpha_Min;
	                if(Dungeon_Visitado[clamp(dx-1,0,Dungeon_Ancho-1),dy] = 2) Alpha = Alpha_Min;
	                if(Dungeon_Visitado[dx,clamp(dy+1,0,Dungeon_Alto-1)]  = 2) Alpha = Alpha_Min;
	                if(Dungeon_Visitado[dx,clamp(dy-1,0,Dungeon_Alto-1)]  = 2) Alpha = Alpha_Min;
                                
	                if(Dungeon_Visitado[dx,dy] = 1) Alpha = 1; 
	                if(Dungeon[dx,dy] == 21) { Alpha_Min = 0; Alpha = 0; }
					
					// Further rooms get darker
					if(i == 0 or i == 4 or j == 0 or j == 4) {
						Alpha	  *= .5;
						Alpha_Min *= .5;
					}
			
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
		                if(map_revealed and Dungeon_Visitado[dx,dy] == 0) {
		                    draw_sprite_ext(spr_UI_Map, idx-1,  mx+6+i*(sep), my+2+j*seph, 2, 2, 0, c_white, Alpha_Min);
							var map = ds_map_create();
							map[? "spr"] = spr_UI_Map;
							map[? "x"] = mx+6+i*(sep);
							map[? "y"] = my+2+j*seph;
							map[? "index"] = idx-1;
							map[? "alpha"] = Alpha_Min;
							map[? "s"] = 2;
							ds_list_add(global.Dungeon_Map,map);
		                } else {
		                    if(Alpha > 0) draw_sprite_ext(spr_UI_Map, idx-1,  mx+2+i*(sep), my+2+j*seph, 2, 2, 0, c_white, Alpha);
							var map = ds_map_create();
							map[? "spr"] = spr_UI_Map;
							map[? "x"] = mx+2+i*(sep);
							map[? "y"] = my+2+j*seph;
							map[? "index"] = idx-1;
							map[? "alpha"] = Alpha;
							map[? "s"] = 2;
							ds_list_add(global.Dungeon_Map,map);
		                }
		            }
				
				
				}
				
			}
			
		}
	}
	
    for(var i = 0; i < 5; i++) {
        for(var j = 0; j < 5; j++) {
            Alpha_Min = 0.5;
            var dx = global.Posicion_i - 2 + i;
            var dy = global.Posicion_j - 2 + j;
            if(dx >= 0 and dx < Dungeon_Ancho) {
                if(dy >= 0 and dy < Dungeon_Alto) {

                Alpha = 0;
                if(Dungeon_Visitado[clamp(dx+1,0,Dungeon_Ancho-1),dy] = 1) Alpha = Alpha_Min;
                if(Dungeon_Visitado[clamp(dx-1,0,Dungeon_Ancho-1),dy] = 1) Alpha = Alpha_Min;
                if(Dungeon_Visitado[dx,clamp(dy+1,0,Dungeon_Alto-1)]  = 1) Alpha = Alpha_Min;
                if(Dungeon_Visitado[dx,clamp(dy-1,0,Dungeon_Alto-1)]  = 1) Alpha = Alpha_Min;
                                
                if(Dungeon_Visitado[dx,dy] = 1) Alpha = 1; 
                if(Dungeon[dx,dy] == 21 and Dungeon_Visitado[dx,dy] == false) { Alpha_Min = 0; Alpha = 0; }
					
				// Further rooms get darker
				if(i == 0 or i == 4 or j == 0 or j == 4) {
					Alpha	  *= .5;
					Alpha_Min *= .5;
				}
                    			
				var big_room_type = 0;
				var big_room_alpha = 0;
				var ss = 2;
				if((abs(global.Posicion_i-dx))+(abs(global.Posicion_j-dy))<=1) ss *= wav;
                if(Dungeon[dx,dy] != 0) {
                    if(map_revealed and Dungeon_Visitado[dx,dy] = 0) {
						big_room_type = 1;
						big_room_alpha = Alpha_Min;
                        draw_sprite_ext(spr_UI_Map_Icons, Dungeon[dx,dy],  mx+2+i*(sep) + 4*(2-ss), my+2+j*seph + 4*(2-ss), ss, ss, 0, c_white, Alpha_Min);
                
						var map = ds_map_create();
						map[? "spr"] = spr_UI_Map_Icons;
						map[? "x"] = mx+2+i*(sep) + 4*(2-ss);
						map[? "y"] = my+2+j*seph + 4*(2-ss);
						map[? "index"] = Dungeon[dx,dy];
						map[? "alpha"] = Alpha_Min;
						map[? "s"] = ss;
						ds_list_add(global.Dungeon_Map,map);
						
                    } else {
						big_room_type = 2;
						big_room_alpha = Alpha;
                        if(Alpha > 0) draw_sprite_ext(spr_UI_Map_Icons, Dungeon[dx,dy],  mx+2+i*(sep) + 4*(2-ss), my+2+j*seph + 4*(2-ss), ss, ss, 0, c_white, Alpha);
                
						var map = ds_map_create();
						map[? "spr"] = spr_UI_Map_Icons;
						map[? "x"] = mx+2+i*(sep) + 4*(2-ss);
						map[? "y"] = my+2+j*seph + 4*(2-ss);
						map[? "index"] = Dungeon[dx,dy];
						map[? "alpha"] = Alpha;
						map[? "s"] = ss;
						ds_list_add(global.Dungeon_Map,map);
						
                    }
                }
				
				// Note down big rooms
				if(Dungeon[dx,dy] == 29) {
					var m = ds_map_create();
					m[? "x"] = mx+2+i*(sep) + 4*(2-ss);
					m[? "y"] = my+2+j*seph  + 4*(2-ss);
					m[? "t"] = big_room_type;
					m[? "a"] = big_room_alpha;
					m[? "s"] = ss;
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
	if(m[? "t"] == 1) {
		draw_sprite_ext(spr_UI_Map_Icons, 29,  m[? "x"], m[? "y"], m[? "s"], m[? "s"], 0, c_white, m[? "a"]);
		var map = ds_map_create();
		map[? "spr"] = spr_UI_Map_Icons;
		map[? "x"]		= m[? "x"];
		map[? "y"]		= m[? "y"];
		map[? "index"]	= 29;
		map[? "alpha"]	= m[? "a"];
		map[? "s"]		= m[? "s"];
		ds_list_add(global.Dungeon_Map,map);
	}
	if(m[? "t"] == 2) {
		draw_sprite_ext(spr_UI_Map_Icons, 29,  m[? "x"], m[? "y"], m[? "s"], m[? "s"], 0, c_white, m[? "a"]);
		var map = ds_map_create();
		map[? "spr"] = spr_UI_Map_Icons;
		map[? "x"]		= m[? "x"];
		map[? "y"]		= m[? "y"];
		map[? "index"]	= 29;
		map[? "alpha"]	= m[? "a"];
		map[? "s"]		= m[? "s"];
		ds_list_add(global.Dungeon_Map,map);
	}
				
	ds_map_destroy(m);
}
ds_list_destroy(big_room_list);

// Draw my position
for(var i = 0; i < 5; i++) {
    for(var j = 0; j < 5; j++) {
        var dx = global.Posicion_i - 2 + i;
        var dy = global.Posicion_j - 2 + j;
		if(dx = global.Posicion_i and dy = global.Posicion_j) and ((Dungeon[dx,dy] == 1) or (Dungeon[dx,dy] == 29) or (Dungeon[dx,dy] == 2)) {
			draw_sprite_ext(spr_UI_Map_Icons, 20, 0 + mx+2+i*(sep) + 8*(1-re*wav), my+2+j*seph + 8*(1-re*wav), 2*re*wav, 2*re*wav, 0, c_white, 1);
			var map = ds_map_create();
			map[? "spr"] = spr_UI_Map_Icons;
			map[? "x"]		= mx+2+i*(sep) + 8*(1-re*wav);
			map[? "y"]		= my+2+j*seph + 8*(1-re*wav);
			map[? "index"]	= 20;
			map[? "alpha"]	= 1;
			map[? "s"]		= 2*re*wav;
			ds_list_add(global.Dungeon_Map,map);
		}
	}
}

// Port map to array
var s = ds_list_size(global.Dungeon_Map);
for(var i = 0; i < s; i++) {
	var map = global.Dungeon_Map[| i];
	map_spr[i]		= map[? "spr"];
	map_x[i]		= map[? "x"];
	map_y[i]		= map[? "y"];
	map_s[i]		= map[? "s"];
	map_alpha[i]	= map[? "alpha"];
	map_index[i]	= map[? "index"];
}
                
// Letras
draw_set_font(font_GoldDouble);
draw_set_halign(fa_middle);
if(global.Modo_Juego != "Arcade") draw_text_outline_soft(586, 66, nombre_mapa);
else draw_text_outline_soft(586, 66, lang90+" "+string(Ronda));

// Timer
if(alarm[7]<0) alarm[7] = 45;
draw_text_outline_soft(586, 80, timer_stamp);

// Dibujar sprite menu
var MAX = 10+x+((8-1)*Separacion)/2;
var MAY = 28;

// Usar menu
for(d = 0; d < 4; d++) {
    if( (device_mouse_x_to_gui(d) > MAX-36) and (device_mouse_x_to_gui(d) < MAX+36) and (device_mouse_y_to_gui(d) > MAY-16) and (device_mouse_y_to_gui(d) < MAY+30) ) {
        if( device_mouse_check_button_pressed( d, mb_left ) ) {
            with(control_UI) event_perform(ev_other, ev_user0);
        }
    }
}

if(keyboard_check_pressed(vk_escape)) or (keyboard_check_pressed(ord("M"))){
    with(control_UI) event_perform(ev_other, ev_user0);
}
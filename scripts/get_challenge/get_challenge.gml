/// @description get_challenge(id,type,activate)
/// @function get_challenge
/// @param id
/// @param type
/// @param activate
function get_challenge() {

	// Base de datos de personajes

	// Declarar variables temporales
	var ID;
	var Name = "";
	var Description = "";
	var Basement = false;
	var Treasure = true;
	global.Challenge_Items = "";

	// Devuelve el dato pedido del enemigo dada su ID
	switch(real(argument[0])) {

	    case 0: // WE ARE THE CHAMPIONS
	        if(argument_count <= 2) {
            
	            // Challenge info
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = false;
        
	        } else {
            
	            // Activate the challenge data from here
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	            }
        
	        }
	    break;
    
	    case 1: // SPEED RUNNER
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	            }
	        }
	    break;
    
	    case 2: // PURITY
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = false;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.treasure_room_appear = false; // No pueden aparecer salas del tesoro
	            }
	        }
	    break;
    
	    case 3: // XL
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = false;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.rooms *= 4;
	            }
	        }
	    break;
    
	    case 4: // CTHULHU MASTER
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = true;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.treasure_room_appear = false;
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Challenge_Items = "126|127|128|129|184|";
	                }
	            }
	        }
	    break;
    
	    case 5: // EVIL DEVELOPER
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = false;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.treasure_room_appear = false;
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Challenge_Items = "42|111|";
	                }
	            }
	        }
	    break;
    
	    case 6: // RANDOMIZER
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = true;
	            Treasure = true;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	            }
	        }
	    break;
    
	    case 7: // GREED
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = true;
	            Treasure = true;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Challenge_Items = "40|184|";
	                }
	            }
	        }
	    break;
    
	    case 8: // DON'T TOUCH ME
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = false;
	            Treasure = true;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Challenge_Items = "35|";
	                }
	            }
	        }
	    break; 
    
	    case 9: // BAZOOKA
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = true;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.treasure_room_appear = false;
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Challenge_Items = "10|10|11|11|11|11|11|11|119|";
	                }
	            }
	        }
	    break;    
    
	    case 10: // LITTLE ONES
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = true;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.treasure_room_appear = true;
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Challenge_Items = "280|281|282|283|284|";
	                }
	                control_Dungeon.player_chan_shoot = false;
	            }
	        }
	    break;    
    
	    case 11: // ROCKET MAN
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = true;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.treasure_room_appear = true;
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Challenge_Items = "245|246|";
	                }
	                control_Dungeon.player_chan_shoot = false;
	            }
	        }
	    break;   
    
	    case 12: // EYE BLINK
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = true;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.treasure_room_appear = false;
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Challenge_Items = "260|20|20|20|";
	                }
	            }
	        }
	    break;  
    
	    case 13: // WEALTH
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = true;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.treasure_room_appear = false;
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Jugador_Monedas = 99;
	                }
	            }
	        }
	    break;   
    
	    case 14: // MUSHROOM POWER
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = false;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.treasure_room_appear = false;
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Challenge_Items = "136|169|295|";
	                }
	            }
	        }
	    break;     
    
	    case 15: // PRE-ALPHA
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = false;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.treasure_room_appear = false;
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Challenge_Items = "0|1|2|3|4|5|6|7|8|9|";
	                }
	            }
	        }
	    break;     
    
	    case 16: // SETBACK
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = true;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	            }
	        }
	    break;   
    
	    case 17: // OMEGA
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = false;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Mapa_Tipo = 6;
	                    global.Mapa_Nivel = 1;
	                }
	            }
	        }
	    break;  
    
	    case 18: // DEATHMATCH
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = false;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.treasure_room_appear = false;
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Challenge_Items = "229|130|";
	                }
	            }
	        }
	    break; 
    
	    case 19: // MISSION: IMPOSSIBLE
	        if(argument_count <= 2) {
	            Name = lang(6700+(argument[0]*2));
	            Description = lang(6700+(argument[0]*2)+1);
	            Basement = true;
	            Treasure = false;
	        } else {
	            if(argument[2] == true) {
	                global.Modo_Challenge = argument[0];
	                control_Dungeon.treasure_room_appear = false;
	                if(global.Mapa_Tipo == 1 and global.Mapa_Nivel == 1) {
	                    global.Challenge_Items = "132|";
	                }
	            }
	        }
	    break;  
    
	}


	// Devolver data
	if(argument_count > 1) {
	    switch(argument[1]) {
	        case "name":         return Name; break;
	        case "description":  return Description; break;
	        case "basement":     return Basement; break;
	        case "treasure":     return Treasure; break;
	    }
	}

	return -1;



}

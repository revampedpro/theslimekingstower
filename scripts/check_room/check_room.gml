/// @description check_room(direction)
/// @function check_room
/// @param direction
function check_room(argument0) {

	// Comprueba la id de la room
	switch(argument0) {

	    case "arriba":
	        if(global.Posicion_j == 0) return -1;
	        if(global.Posicion_j > 0 and control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j-1] == 0) return -1;
	        if(global.Posicion_j > 0 and control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j-1] != 0) return control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j-1];
	        break;
    
	    case "abajo":
	        if(global.Posicion_j == control_Dungeon.Dungeon_Alto-1) return -1;
	        if(global.Posicion_j <  control_Dungeon.Dungeon_Alto-1 and control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j+1] == 0) return -1;
	        if(global.Posicion_j <  control_Dungeon.Dungeon_Alto-1 and control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j+1] != 0) return control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j+1];
	        break;

	    case "izquierda":
	        if(global.Posicion_i == 0) return -1;
	        if(global.Posicion_i > 0 and control_Dungeon.Dungeon[global.Posicion_i-1,global.Posicion_j] == 0) return -1;
	        if(global.Posicion_i > 0 and control_Dungeon.Dungeon[global.Posicion_i-1,global.Posicion_j] != 0) return control_Dungeon.Dungeon[global.Posicion_i-1,global.Posicion_j];
	        break;
    
	    case "derecha":
	        if(global.Posicion_i == control_Dungeon.Dungeon_Ancho-1) return -1;
	        if(global.Posicion_i <  control_Dungeon.Dungeon_Ancho-1 and control_Dungeon.Dungeon[global.Posicion_i+1,global.Posicion_j] == 0) return -1;
	        if(global.Posicion_i <  control_Dungeon.Dungeon_Ancho-1 and control_Dungeon.Dungeon[global.Posicion_i+1,global.Posicion_j] != 0) return control_Dungeon.Dungeon[global.Posicion_i+1,global.Posicion_j];
	        break;
        
	    case "centro":
	        return control_Dungeon.Dungeon[ global.Posicion_i, global.Posicion_j ];
	        break;
        
	}



}

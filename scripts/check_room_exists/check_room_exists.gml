/// @description check_room_exists(direction)
/// @function check_room_exists
/// @param direction
function check_room_exists(argument0) {

	// Comprueba si existe una habitacion arriba
	switch(argument0) {

	    case "arriba":
	        if(global.Posicion_j == 0) return 0;
	        if(global.Posicion_j > 0 and control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j-1] == 0) return 0;
	        if(global.Posicion_j > 0 and control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j-1] != 0) return 1;
	        break;
    
	    case "abajo":
	        if(global.Posicion_j == control_Dungeon.Dungeon_Alto-1) return 0;
	        if(global.Posicion_j <  control_Dungeon.Dungeon_Alto-1 and control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j+1] == 0) return 0;
	        if(global.Posicion_j <  control_Dungeon.Dungeon_Alto-1 and control_Dungeon.Dungeon[global.Posicion_i,global.Posicion_j+1] != 0) return 1;
	        break;

	    case "izquierda":
	        if(global.Posicion_i == 0) return 0;
	        if(global.Posicion_i > 0 and control_Dungeon.Dungeon[global.Posicion_i-1,global.Posicion_j] == 0) return 0;
	        if(global.Posicion_i > 0 and control_Dungeon.Dungeon[global.Posicion_i-1,global.Posicion_j] != 0) return 1;
	        break;
    
	    case "derecha":
	        if(global.Posicion_i == control_Dungeon.Dungeon_Ancho-1) return 0;
	        if(global.Posicion_i <  control_Dungeon.Dungeon_Ancho-1 and control_Dungeon.Dungeon[global.Posicion_i+1,global.Posicion_j] == 0) return 0;
	        if(global.Posicion_i <  control_Dungeon.Dungeon_Ancho-1 and control_Dungeon.Dungeon[global.Posicion_i+1,global.Posicion_j] != 0) return 1;
	        break;
        
	}



}

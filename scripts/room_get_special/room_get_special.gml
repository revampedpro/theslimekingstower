/// @description room_get_special()
/// @function room_get_special
function room_get_special() {
	switch(control_Dungeon.Dungeon[global.Posicion_i, global.Posicion_j]) {
	    case 2:  return room_Inicial; break; // Room Inicial
	    case 4:  return room_Tesoro; break; // Tesoro
	    case 7:  return room_Tienda; break; // Tienda
	    case 8:  return room_Sacrificio; break; // Sacrificio
	    case 9:  return room_Heal; break; // Heal
	    case 10: return room_Eleccion; break; // Eleccion
	    case 11: return room_Ultimo_Yo; break; // Ultimo Yo
	    case 12: return room_Mimic; break; // Mimic
	    case 13: return room_Tesoro_Mimic; break; // Tesoro Falso
	    case 14: return room_Tesoro_Unknown; break; // Tesoro Desconocido
	    case 15: return room_Challenge; break; // Challenge
	    case 16: return room_Change; break; // Change room
	    case 17: return room_HealthShop; break; // Change room
	    case 18: return room_Bank; break; // Bank
	    case 22: return room_Bosskey; break; // Boss Key Room
	    case 23: return room_SacrificioExperience; break; // Experience Sacriffice
	    case 24: return room_GodShop; break; // God Shop
	    case 25: return room_ExpMimic; break; // Exp Mimic
	    case 26: return room_KeyMimic; break; // Key Mimic
	    case 27: return room_Sell; break; // Sell Mimic
	    case 28: return room_Tip; break; // Tipster
		case 29: return room_Bigger; break; // Bigger room
		case 30: return room_Rush; break; // Rush Room
		case 31: return room_Repeat; break; // Repeat Room
	}
	return room_Normal;



}

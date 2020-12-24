/// @description get_arcade_enemy(ronda)
/// @function get_arcade_enemy
/// @param ronda
function get_arcade_enemy() {
	// Devuelve un enemigo aleatorio correspondiente a una ronda especifica
	switch(argument[0]) {

	    case 0:  return choose(10);															break;
	    case 1:  return choose(10,10,8);													break;
	    case 2:  return choose(10,8,8);														break;
	    case 3:  return choose(8,8,0);														break;
	    case 4:  return choose(8,0,1);														break;
	    case 5:  return choose(8,2,0,1,4);													break;
	    case 6:  return choose(8,2,0,1,3,4);												break;
	    case 7:  return choose(8,2,3,4,7);													break;
	    case 8:  return choose(8,2,3,4,5,7);												break;
	    case 9:  return choose(8,2,9,0,0,47,46,48,72);										break;
	    case 10: return choose(8,2,9,9,0,35,47,46,48,72);									break;
	    case 11: return choose(8,2,9,12,12,36,47,46,48,72);									break;
	    case 12: return choose(2,12,5,1,37,47,46,48,52,72);									break;
	    case 13: return choose(2,12,9,38,47,46,48,52,71,72);								break;
	    case 14: return choose(2,12,9,39,47,48,52,72);										break;
	    case 15: return choose(2,12,9,40,47,48,52,72);										break;
	    case 16: return choose(12,9,41,47,48,52,72);										break;
	    case 17: return choose(12,9,42,47,48,52,72);										break;
	    case 18: return choose(9,5,12,43,47,48,72);											break;
	    case 19: return choose(12,44,47,48,72);												break;
	    case 20: return choose(9,45,47,48,57);												break;
	    case 21: return choose(9,12,19,38,47,46,48,52,57);									break;
	    case 22: return choose(9,12,19,38,47,46,48,52,57);									break;
	    case 23: return choose(9,12,19,38,47,46,48,52,57,60);								break;
	    case 24: return choose(9,12,19,38,47,46,48,52,57,60);								break;
	    case 25: return choose(9,12,19,38,47,46,48,52,49,57,60);							break;
	    case 26: return choose(21,9,19,38,47,46,48,52,49,57,60);							break;
	    case 27: return choose(21,9,19,38,47,46,48,52,49,57,60);							break;
	    case 28: return choose(21,23,19,38,47,46,48,52,49,60,66,66);						break;
	    case 29: return choose(21,23,19,38,47,46,48,52,49,60,66);							break;
	    case 30: return choose(21,23,19,38,47,46,48,52,49,60,66,71);						break;
	    case 31: return choose(21,23,19,38,47,46,48,52,49,60,66,71);						break;  
	    case 32: return choose(21,22,23,38,47,46,48,52,19,49,60,66,71);						break;  
	    case 33: return choose(21,22,23,38,47,46,48,52,19,49,60,66,71);						break;  
	    case 34: return choose(21,22,23,38,47,46,48,52,19,49,60,66,71);						break;  
	    case 35: return choose(22,49,66,71);												break;  
	    case 36: return choose(22,22,25,49,66,71);											break;  
	    case 37: return choose(22,25,49,66,71);												break;  
	    case 38: return choose(25,49,66,71);												break;  
	    case 39: return choose(649);														break;  
        
	}

	if(argument[0] > 500) return 599;



}

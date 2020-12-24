/// @description mob_become_champion()
/// @function mob_become_champion
function mob_become_champion() {
	// A mob becomes championish
	var c = 5 + global.Mapa_Tipo;

	// If "We Are The Champions" challenge, all enemies are converted
	if(global.Modo_Challenge == 0) or (global.Modo_Challenge == 19) c = 101;

	if(random(100) < c) {
	    champion_xscale = 1.15;
	    champion_yscale = 1.15;
	    switch(choose(1,2,3,4,5,6)) {
    
	        case 1: // Red (HPx2)
	            champion_color = c_red;
	            Max_HP *= 4;
	            HP = Max_HP;
	            break;
    
	        case 2: // Amarillo (DMGx2)
	            champion_color = c_yellow;
	            Fuerza *= 2;
	            Max_HP *= 2;
	            HP = Max_HP;
	            break;
    
	        case 3: // Verde (Drop bomb)
	            champion_color = c_green;
	            Max_HP *= 2;
	            HP = Max_HP;
	            break;
    
	        case 4: // Azul (Drop lesser enemy)
	            champion_color = c_blue;
	            Max_HP *= 2;
	            HP = Max_HP;
	            break;
    
	        case 5: // Naranja (Drop rockets, stronger)
	            champion_color = c_orange;
	            Max_HP *= 2;
	            Fuerza *= 2;
	            HP = Max_HP;
	            break;
    
	        case 6: // Pink (Drop hearts, stronger)
	            champion_color = c_fuchsia;
	            Max_HP *= 2;
	            Fuerza *= 2;
	            HP = Max_HP;
	            break;
    
	    }
	}



}

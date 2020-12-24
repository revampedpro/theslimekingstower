/// @description get_chest_pool(pool)
/// @function get_chest_pool
/// @param pool
function get_chest_pool() {
	// Load chest data
	switch(argument[0]) {

	    case "mini":
	        sprite_index = spr_Cofre_Mini;
	        return objCofreMini;
	    break;

	    case "blue":
	        sprite_index = spr_Cofre_Blue;
	        return objCofreMiniBlue;
	    break;

	    case "gold":
	        sprite_index = spr_Cofre_Gold;
	        return objCofreMiniGold;
	    break;

	    case "experience":
	        sprite_index = spr_Cofre_Experience;
	        return objCofreMiniExperience;
	    break;
    
	    case "keys":
	        sprite_index = spr_Cofre_Keys;
	        return objCofreMiniKeys;
	    break;
    
	    case "bombs":
	        sprite_index = spr_Cofre_Bombs;
	        return objCofreMiniBombs;
	    break;
    
	    case "bosskey":
	        sprite_index = sprBossKeyChest;
	        return objCofreBossKey;
	    break;

	}




}



// Loop esperando
if(sprite_index == spr_Cofre_KeyMimic_Esperando) image_index = 5;

// Loop reposo
if(sprite_index == spr_Cofre_KeyMimic_Reposo) image_index = 3;

// Tragarse la llave
if(sprite_index == spr_Cofre_KeyMimic_Comiendo and instance_exists(obj_Jugador)) {
    var Exito = true;
    
    // Genera un item aleatorio//image_speed = 0;
	if(network_is_online() and network_is_host()) or (!network_is_online()) {
	    if(Exito == true) {
	        var pool = "all";
	        if(room == room_Arcade) pool = "arcade";
	        player_get_item(get_random_item_from_pool(pool),true);
	    }
	}
    
    sprite_index = spr_Cofre_KeyMimic_Esperando;
    image_index = 5;
    
}


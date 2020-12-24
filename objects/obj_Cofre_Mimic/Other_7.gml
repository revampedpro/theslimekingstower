//image_speed = 0;

// Loop esperando
if(sprite_index == spr_Cofre_Mimic_Esperando) image_index = 5;

// Loop reposo
if(sprite_index == spr_Cofre_Mimic_Reposo) image_index = 3;

// Tragarse la moneda
if(sprite_index == spr_Cofre_Mimic_Comiendo and instance_exists(obj_Jugador)) {
    var Exito = false;
    if(random(100) <= 20 + player_has_item(194)*20) Exito = true;
    
    // Genera un item aleatorio
	if(network_is_online() and network_is_host()) or (!network_is_online()) {
	    if(Exito == true) {
	        var pool = "all";
	        if(room == room_Arcade) pool = "arcade";
	        player_get_item(get_random_item_from_pool(pool),true);
	    }
	}
    
    sprite_index = spr_Cofre_Mimic_Esperando;
    image_index = 5;
    
}


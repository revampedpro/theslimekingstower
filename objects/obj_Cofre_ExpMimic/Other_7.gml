//image_speed = 0;

// Loop esperando
if(sprite_index == spr_Cofre_ExpMimic_Esperando) image_index = 5;

// Loop reposo
if(sprite_index == spr_Cofre_ExpMimic_Reposo) image_index = 3;

// Tragarse la moneda
if(sprite_index == spr_Cofre_ExpMimic_Comiendo and instance_exists(obj_Jugador)) {
    var Exito = false;
    if(random(100) <= 50 + player_has_item(194)*20) Exito = true;
    
    // Genera un item aleatorio
    if(Exito == true) {
    
        repeat(irandom_range(15,30)) {
            var expOrb = instance_create(x,y,objExperienceOrb);
            expOrb.value = irandom_range(1,2);
        }
    
    }
    
    sprite_index = spr_Cofre_ExpMimic_Esperando;
    image_index = 5;
}


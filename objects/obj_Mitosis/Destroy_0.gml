action_inherited();
// Eliminar de la matriz
control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ] = string_replace( control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ], string(ID) + "|", "" );

///Create death effect
if(global.Quality > 0) {
    var a = create_effect(x, y, sprSplat3, 0.5);
    var k = 0.25;
    a.vx = vx*k;
    a.vy = vy*k;
    
    
    repeat(irandom_range(2, 4))
    {
        var a = instance_create(x, y, objGuts);
        k = .75;
        a.vx += vx*k;
        a.vy += vy*k;
        a.blood_colour = Color_Sangre;
    }
}

// Crea mitosis pequeñas
if(sprite_index = spr_Mitosis_Big) and (obj_Jugador.Pet_Bonus_Minitosis == false) and (!network_is_online() or global.NETWORK_HOST == true) {
    repeat(3) {
        if(instance_number(obj_Mitosis) < 6) {
            var Sub = instance_create(x - 20 + random(40), y - 20 + random(40), obj_Mitosis);
            Sub.ID = 17;
            with(Sub) event_perform(ev_other, ev_user15);
            Sub.no_drops = true;
            Sub.Crecer = true;
        }
    }
}


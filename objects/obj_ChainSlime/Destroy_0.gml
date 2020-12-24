action_inherited();
// Eliminar de la matriz
control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ] = string_replace( control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ], string(ID) + "|", "" );

// Create Little Slimes
if(real(ID) == 21) and (!network_is_online() or global.NETWORK_HOST == true) {
    repeat(3) {
        var _sID = choose(18,20);
        var _sxR = -4 + random(8);
        var _syR = -4 + random(8);
        if(place_free(x+_sxR,y+_syR)) {
            var Summoning = instance_create(x+_sxR, y+_syR, get_enemy(_sID, 0));
            Summoning.ID = _sID;
            with(Summoning) event_perform(ev_other, ev_user15);
        }
    }
}

///Create death effect
if(global.Quality > 0) {
	var a = create_effect(x, y, Sprite_Die, 0.6);

	repeat(irandom_range(6, 8)) {
	    var a = instance_create(x, y, objGuts);
	    a.sprite_index = Sprite_Guts;
	    k = .75;
	    a.vx += vx*k;
	    a.vy += vy*k;
	    a.blood_colour = Color_Sangre;
	}
	var a = instance_create(x, y, objFloorDetail);
	a.sprite_index = Sprite_Die_Leftover;
	a.vx += vx;
	a.vy += vy;

}


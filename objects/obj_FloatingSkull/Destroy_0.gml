action_inherited();
// Eliminar de la matriz
control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ] = string_replace( control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ], string(ID) + "|", "" );

// Create Little Slime
if(real(ID) == 2) and (place_free(x,y)) and (!network_is_online() or global.NETWORK_HOST == true) {
    var Summoning = instance_create(x, y, get_enemy(18, 0));
    Summoning.ID = 18;
    with(Summoning) event_perform(ev_other, ev_user15);
    Summoning.no_drops = true;
}

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



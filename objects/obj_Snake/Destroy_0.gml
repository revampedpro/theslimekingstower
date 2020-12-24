action_inherited();
// Eliminar de la matriz
control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ] = string_replace( control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ], string(ID) + "|", "" );

// Create Little Slime
if(real(ID) == 10) and (!player_has_pet(53)) and (!network_is_online() or global.NETWORK_HOST == true) {
    var Summoning = instance_create(x, y, get_enemy(20, 0));
    Summoning.ID = 20;
    with(Summoning) event_perform(ev_other, ev_user15);
    Summoning.no_drops = true;
}

// Create tomahawk
if(real(ID) == 36) and (!player_has_pet(53)) and (!network_is_online() or global.NETWORK_HOST == true) {
    var Summoning = spawn(x,y,19);
    Summoning.no_drops = true;
}

///Create death effect
if(global.Quality > 0) {
	var a = create_effect(x, y, sprSplat3, 0.5);
	var k = 0.25;
	a.vx = vx*k;
	a.vy = vy*k;

	repeat(irandom_range(8, 12))
	{
	    var a = instance_create(x, y, objFloorDetail);
	    a.sprite_index = Sprite_Die_Leftover;
	    a.image_index = irandom(a.image_number);
	    k = .75;
	    a.vx += vx*k;
	    a.vy += vy*k;
	}
}



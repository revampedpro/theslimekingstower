action_inherited();
// Eliminar de la matriz
control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ] = string_replace( control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ], string(ID) + "|", "" );

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


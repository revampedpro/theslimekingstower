action_inherited();
// Eliminar de la matriz
control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ] = string_replace( control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j ], string(ID) + "|", "" );

///Create death effect
if(global.Quality > 0) {
	var a = create_effect(x, y, sprSplat3, 0.5);
	var k = 0.25;
	a.vx = vx*k;
	a.vy = vy*k;


	repeat(irandom_range(8, 12)) {
	    var a = instance_create(x, y, objFloorDetail);
	    a.sprite_index = Sprite_Die_Leftover;
	    a.image_index = irandom(a.image_number);
	    k = .75;
	    a.vx += vx*k;
	    a.vy += vy*k;
	}
}




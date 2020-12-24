action_inherited();
// Eliminar de la matriz
control_Dungeon.Dungeon_Enemigos[global.Posicion_i, global.Posicion_j] = string_replace(control_Dungeon.Dungeon_Enemigos[ global.Posicion_i, global.Posicion_j], string(ID) + "|", "");


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

// Create Little Slime
if(real(ID) == 0) and (!player_has_pet(52)) and (!network_is_online() or global.NETWORK_HOST == true) {
    var Summoning = instance_create(x, y, get_enemy(18, 0));
    Summoning.ID = 18;
    with(Summoning) event_perform(ev_other, ev_user15);
    Summoning.no_drops = true;
    var a = instance_create(x, y, objFloorDetail);
    a.sprite_index = sprSkeletonLeftover;
}

// Black Skeleton
if(real(ID) == 35) and (!player_has_pet(52)) and (!network_is_online() or global.NETWORK_HOST == true) {
    var spn = spawn(x,y,1);
    spn.no_drops = true;
    var a = instance_create(x, y, objFloorDetail);
    a.sprite_index = sprBlackSkeletonLeftover;
}

// Minilodes
if(real(ID) == 30) and (!network_is_online() or global.NETWORK_HOST == true) {
    var spn = spawn(x,y,50);
    spn.no_drops = true;
    var spn = spawn(x,y,50);
    spn.no_drops = true;
}
if(real(ID) == 50) and (!network_is_online() or global.NETWORK_HOST == true) {
    var spn = spawn(x,y,51);
    spn.no_drops = true;
    var spn = spawn(x,y,51);
    spn.no_drops = true;
}


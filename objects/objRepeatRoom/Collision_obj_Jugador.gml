// Destroy
instance_destroy();

// Repeat
dungeon_goto_level(global.Mapa_Tipo,1);

// Smoke
if(global.Quality == 0)exit;
repeat(4) {
    var v = 8;
    var xx = x+random_range(-v, v);
    var yy = y+random_range(-v, v);
    var a = random_range(0.1, 0.4);
    create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
}


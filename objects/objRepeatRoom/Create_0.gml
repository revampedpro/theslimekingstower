// Vars
image_speed = 0.2;

// Destroy if visited
if(control_Dungeon.Dungeon_Visitado[global.Posicion_i,global.Posicion_j] = 1) instance_destroy();
if(global.Quality == 0)exit;
repeat(4) {
    var v = 8;
    var xx = x+random_range(-v, v);
    var yy = y+random_range(-v, v);
    var a = random_range(0.1, 0.4);
    create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
}


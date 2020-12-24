/// @description  Crear efecto de romperse  
repeat(4){
    var v = 8;
    var xx = x+random_range(-v, v);
    var yy = y+random_range(-v, v);
    var a = random_range(0.1, 0.4);
    create_effect(xx+12, yy+12, choose(sprSmoke, sprSmokeSmall), a);
}


// Get summon ID
var summonID = 0;
if(real(ID) == 49) summonID = 35; // Red summoned

// Summon
if(real(ID) == 49) and (player_has_pet(70)) exit;
if(instance_number(parent_Enemigo) < 10) {
    spawn(x,y,summonID);
    repeat(4) {
        var v = 8;
        var xx = x+random_range(-v, v);
        var yy = y+random_range(-v, v);
        var a = random_range(0.1, 0.4);
        create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
    }
}


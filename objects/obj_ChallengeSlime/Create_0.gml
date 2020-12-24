action_inherited();
///Set variables
ground_acc = 0.05;
ground_frict = 0.025;
image_speed = .1;
damage = 1;
move_speed = .4;
hp = 60;
max_hp = 60;
Altura = 0;
xscale = 1;
yscale = 1;
Objetivo = noone;
ID = 26;
noboss = false;
event_perform(ev_other, ev_user15);

if(control_Dungeon.Dungeon_Visitado[global.Posicion_i,global.Posicion_j] = 1) {
    noboss = true;
    no_drops = true;
    instance_destroy();
}
if(global.Quality == 0)exit;
repeat(4) {
    var v = 8;
    var xx = x+random_range(-v, v);
    var yy = y+random_range(-v, v);
    var a = random_range(0.1, 0.4);
    create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
}



// Destroy
instance_destroy();

// Change build
with(obj_Jugador) change_build();
create_effect(x, y, sprMagicEffect2, 0.4);
audio_play_sound(sndChestAppears, 0, 0);

// Smoke
if(global.Quality == 0)exit;
repeat(4) {
    var v = 8;
    var xx = x+random_range(-v, v);
    var yy = y+random_range(-v, v);
    var a = random_range(0.1, 0.4);
    create_effect(xx, yy, choose(sprSmoke, sprSmokeSmall), a);
}


// Destroy effects
var fx = create_effect(x, y, sprMagicEffect1, 0.4);
fx.depth = -666;
repeat(6) {
    var fx = create_effect(x, y, sprSmokeSmall, 0.4+random(2)/10);
    fx.hspeed = -2 + random(4);
    fx.vspeed = -2 + random(4);
}
instance_destroy();


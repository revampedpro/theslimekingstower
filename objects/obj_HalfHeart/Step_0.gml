action_inherited();
// Cambiar profundidad
depth = -y;

// Frenar
hspeed *= 0.98;
vspeed *= 0.98;

// Acercarse al jugador si tiene el magnet
if( instance_exists( obj_Jugador ) ) {
    if(player_has_item(60)) and ( distance_to_object(obj_Jugador) < 100 ) {
        var A = point_direction( x, y, obj_Jugador.x, obj_Jugador.y ) ;
        hspeed =  1 * cos(degtorad(A));
        vspeed = -1 * sin(degtorad(A));
    }
}

// Fx
if(!instance_exists(fxTransition2)) and (!appeared) {
    var fx = create_effect(x, y, sprMagicEffect1, 0.4);
    fx.depth = -800;
    appeared = true;
    visible = true;
    vy = -2;
}


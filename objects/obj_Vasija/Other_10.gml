// Curar al jugador
if( instance_exists( obj_Jugador ) ) {
    if(player_has_item(82)) {
        obj_Jugador.HP = min(obj_Jugador.HP+2,obj_Jugador.HP_Max);
        control_UI.alarm[1] = 10;
        audio_play_sound( snd_Heal, 0, 0 );
    }
}

///Create effects
if(global.Quality == 0)exit;
create_effect(x, y, sprBulletHitFx, 0.3);
repeat(3)
{
    var v = 8;
    var xx = x+random_range(-v, v);
    var yy = y+random_range(-v, v);
    var a = random_range(0.8, 1);
    var fx = instance_create( xx, yy, fx_Sprite_Persistent );
    fx.sprite_index = sprBlood;
    fx.image_blend = c_black;
    fx.image_alpha = 0.3;
    fx.image_xscale = a;
    fx.image_yscale = a;
    //draw_to_floor(sprBlood, 0, xx, yy, a, a, 0, c_black, 0.3);
}
repeat(8)
{
    var a = instance_create(x, y, objFloorDetail);
    a.sprite_index = sprPotPiece;
    a.image_index = irandom(a.image_number-1);
    a.image_alpha = 0.75;
    a.alarm[10] = 360;
}

/* */
/*  */

action_inherited();
// Eliminar enemigo de la matriz
if((room == room_Jefe) or (room == room_Jefe_Amarillo) or (room == room_Jefe_KingSlime) or (room == room_Jefe_BasementParty)) control_Dungeon.Dungeon_Boss = -1;

// Hacer vibrar la camara
shake_camera(choose(7,8,9),choose(7,8,9));

// Destroy all enemies
with(parent_Enemigo) instance_destroy();

///Create death effect
var a = create_effect(x, y, spr_Black_SuperSlime_Die, 0.6);
var k = 0.25;
a.vx = vx*k;
a.vy = vy*k;

///Splat some blood on the floor
repeat(15)
{
    var s = random_range(1, 1.5);
    var a = random_range(0.6, 1);
    var xx = x+irandom_range(12, -12);
    var yy = y+irandom_range(10, -10);
    var fx = instance_create( xx, yy, fx_Sprite_Persistent );
    fx.sprite_index = sprBlood;
    fx.image_blend = Color_Sangre;
    fx.image_xscale = s;
    fx.image_yscale = s;
    fx.image_alpha = a;
}
///Spray out some guts
repeat(irandom_range(6, 8))
{
    var a = instance_create(x, y, objGuts);
    a.sprite_index = choose(sprGuts, sprGreenGuts);
    k = .75;
    a.vx += vx*k;
    a.vy += vy*k;
    a.blood_colour = Color_Sangre;
}

audio_play_sound(snd_New_Floor_Start, 1, 0);



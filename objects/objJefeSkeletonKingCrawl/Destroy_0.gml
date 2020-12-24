action_inherited();
// Eliminar enemigo de la matriz
if((room == room_Jefe) or (room == room_Jefe_Amarillo) or (room == room_Jefe_KingSlime) or (room == room_Jefe_BasementParty)) control_Dungeon.Dungeon_Boss = -1;

// Create way to the portal
if(room != room_BossRush) {
	instance_create(-12+room_width/2,-12+room_height/2,objPortalTeleport);
	flash(30,c_aqua);
}

// Unlock Boss Rush Mode
ini_open("save.ini");
var pre = ini_read_real("BRU","A",false);
ini_write_real("BRU","A",true);

if(ini_read_real("BRU","B",false) == true) and (pre == false) {
	var notifier = instance_create(__view_get( e__VW.XView, 0 ) + 40, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), objUnlock);
	notifier.playerID = 0;
	notifier.spr = sprJefeLodeslime;
	notifier.text = lang(7043);
	audio_stop_sound(sndCharacterUnlocked);
	audio_play_sound(sndCharacterUnlocked,0,0);
}
ini_close();

// Unlock Bones
if(!check_character_unlocked(12,0)) unlock_character(12);

// Unlock progression
unlock_character_progression(4,global.characterSelected);

// Destroy enemy leftovers
with(parent_Enemigo) {
	if(!IsBoss)	instance_destroy();
}

// Hacer vibrar la camara
shake_camera(choose(7,8,9),choose(7,8,9));

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



action_inherited();
// Eliminar enemigo de la matriz
if((room == room_Jefe) or (room == room_Jefe_Amarillo) or (room == room_Jefe_KingSlime) or (room == room_Jefe_BasementParty)) control_Dungeon.Dungeon_Boss = -1;

// Unlock prayer
if(instance_exists(obj_Jugador)) {
    unlock_character(9);
}

// Hacer vibrar la camara
shake_camera(choose(7,8,9),choose(7,8,9));

// comprobar q es modo aventura omega y eos
if(global.Modo_Juego == "Normal") {
    ini_open("save.ini");
        var trials = ini_read_real("S","TRLS",0);
        ini_write_real( "S", "TRLS", trials+1 );
    ini_close();
}

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
    //draw_to_floor(sprBlood, 0, xx, yy, s, s, 0, Color_Sangre, a);
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

/// Terminar juego
if(instance_exists(obj_Jugador)) and (global.Modo_Juego == "Normal") {

    if(global.Mapa_Tipo == 13) {
        global.GameCompleted = true;
        instance_create(-12+room_width/2,-12+room_height/2,objSlimekingCrown);
        repeat(2) { 
            with(parent_Enemigo) { if(HP != 0) { HP = 0; instance_destroy(); } }
            with(parent_Jefe)    { if(HP != 0) { HP = 0; instance_destroy(); } }
        }
        ini_open("save.ini");
        ini_write_real("SC"+string(global.characterSelected), "3", true);
        global.CharacterUnlocked[global.characterSelected,3] = true;
        ini_close();        
    }
    
    // Tell GoogleAnalytics that a the slimeking was defeated
    //GoogleAnalytics_SendEvent("ingame","final slimeking kill");
    
}

if(instance_exists(obj_Jugador)) and (global.Modo_Juego == "Endless") {

    // Aumentar el nivel de la dungeon y terminar
    if(global.Mapa_Tipo == 13) {
        ini_open( "save.ini" );
        var level = ini_read_real("S", "EDL"+string(global.Modo_Dificultad), 1);
        ini_write_real("S", "EDL"+string(global.Modo_Dificultad), level+1);
        ini_close();
        instance_create(0, 0, fx_Game_End);
        global.Slime_King_Dead = true;
        

        // Check if daily run then save
        if(global.Modo_Sub_Juego == "Daily") {
            ini_open("save.ini");
            if((ini_read_real("S", "DLR", 0)) != current_day) {
                ini_write_real("S", "DLR", current_day);
                global.Monedas_General+=200
            }
            ini_close();
        }
        
        with(obj_Jugador)event_perform( ev_other, ev_user10 );
    }
}

/// Fanfarria de jefe vencido
audio_play_sound( snd_New_Floor_Start, 1, 0 );
audio_stop_sound(BGM_Slimeking_Battle);
audio_stop_sound(BGM_BasementPartyBoss);
audio_stop_sound(BGM_PortalBoss);


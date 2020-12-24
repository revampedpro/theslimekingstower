// Saltar
xscale = 0.6;
yscale = 0.6;
if(global.Comprobar_Primera_Vez == true)exit;

// check unlocked character
var blocked = false;
if(global.characterSelected == 11) and (global.Modo_Juego == "Arcade" or global.Modo_Juego == "BossRush") {
	blocked = true;
}
if(room == room_Character_Select) {
    unlocked = false;
    with(objCharacterSelect) {
        if(playerID == global.characterSelected) and (unlocked) other.unlocked = true;
    }
    if(!unlocked) or (blocked) {
        with(objCharacterSelect) {
            shakeX = 4;
            shakeY = 4;
        }
        audio_play_sound(snd_Error,0,0);
        exit;
    }
}

if(room == room_Challenge_Select) {
    global.Modo_Challenge_Activo = true;
    global.Modo_Challenge = global.characterSelected;
}

instance_create( 0, 0, fx_Transition_Out );
Activado = true;


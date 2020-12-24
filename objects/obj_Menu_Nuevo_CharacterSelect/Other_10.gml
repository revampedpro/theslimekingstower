/// @description  Accion despues de la transicion
if(global.characterSelected != -1) {
    if(room == room_Character_Select) {
        room_goto(init_Game);
    }
    if(room == room_Challenge_Select) {
        room_goto(init_Game);
        global.characterSelected = 0;
        global.Modo_Challenge_Activo = true;
    }
} else {
    with(objCharacterSelect) {
        shakeX = 4;
        shakeY = 4;
    }
    audio_play_sound(snd_Error,0,0);
}


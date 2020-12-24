/// @description  Sonido
if(!audio_is_playing( BGM_Menu ) ) { audio_stop_all(); audio_play_sound( BGM_Menu, 1, 1 ); }

// Cloud saving
cloud_save_ini();

// Comprobar juego 100%
ini_open("save.ini");
    var cc = ini_read_real("FLGM", "0", false);
ini_close();
if(cc == true) exit;
var unlockedAll = true;
for(i = 0; i < global.CHARACTER_NUM; i++) {
    if(check_character_unlocked(i,0) == false) { unlockedAll = false; exit; }
    if(check_character_unlocked(i,1) == false) { unlockedAll = false; exit; }
    if(check_character_unlocked(i,2) == false) { unlockedAll = false; exit; }
    if(check_character_unlocked(i,3) == false) { unlockedAll = false; exit; }
    if(check_character_unlocked(i,4) == false) { unlockedAll = false; exit; }
    if(check_character_unlocked(i,5) == false) { unlockedAll = false; exit; }
}
for(i = 0; i < global.CHALLENGE_NUM; i++) {
    if(check_challenge_unlocked(i) == false) { unlockedAll = false; exit; }
}
if(unlockedAll == true) {
    ini_open("save.ini");
        ini_write_real("FLGM", "0", true);
    ini_close();
    global.GAME_COMPLETED = true;
    
    // [STEAM] Achievement
    steam_unlock("L_HAIRRYITEM");
    
}
// Comprobante de si ya ha enviado la puntuacion
Enviado = false;

// Añade las monedas obtenidas a las monedas generales
if(!challenge_check(13)) {
    global.Monedas_General += global.DEBUG_MONEDAS;
    ini_open("save.ini");
    ini_write_real( "S", "MG", global.Monedas_General);
    ini_close();
}

// Texts
lang43 = string_upper(lang(43));
lang44 = string_upper(lang(44));
lang47 = string_upper(lang(47));
lang48 = string_upper(lang(48));
lang49 = string_upper(lang(49));
lang50 = string_upper(lang(50));
lang51 = string_upper(lang(51));
if(global.ARCADE_RONDAS > 0) { lang49 = lang(90); }
retrieved_data = false;
string_explode(global.Jugador_Items_Obtenidos, "|");
for(i = 0; i < 500; i++) {
    shownItem[i] = -1;
}
items_loaded = false;

// Check completed characters
for(i = 0; i < 10; i++) {
    if(check_character_unlocked(i,0))and(check_character_unlocked(i,1))and(check_character_unlocked(i,2))and(check_character_unlocked(i,3)) {
        switch(i) {
            case  0: steam_unlock("C_HAIRRY"); break;
            case  1: steam_unlock("C_JADE"); break;
            case  2: steam_unlock("C_THECOLLECTOR"); break;
            case  3: steam_unlock("C_IGNEOUS"); break;
            case  4: steam_unlock("C_VOID"); break;
            case  5: steam_unlock("C_MAIYAN"); break;
            case  6: steam_unlock("C_MIDAS"); break;
            case  7: steam_unlock("C_MIND"); break;
            case  8: steam_unlock("C_DOTS"); break;
            case  9: steam_unlock("C_PRAYER"); break;
        }
    }
}


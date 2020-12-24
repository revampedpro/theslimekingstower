/// @description new
/// Pedir datos del top
var URL = global.URL;
//var URL = "http://revampedpro.com/slimetower/top/";
var Pre_URL  = "";
var Post_URL = "";
var Hard_URL = "";
var Tower_URL = "";

switch(Modo) {
    case 0: p_Mode = "0"; break;
    case 1: p_Mode = "1"; break;
    case 2: p_Mode = "2"; break;
    case 3: p_Mode = "3"; break;
}

switch(r_Tiempo) {
    case 0: p_Time = "2"; break;
    case 1: p_Time = "1"; break;
    case 2: p_Time = "0"; break;
}

switch(Dificultad) {
    case 0: p_Difficulty = "0"; break;
    case 1: p_Difficulty = "1"; break;
    case 2: p_Difficulty = "2"; break;
}

switch(Tower) {
    case 0: p_Basement = "0"; break;
    case 1: p_Basement = "1"; break;
}

HTTP = http_get(URL + "top_general.php?" + "r_time="+string(p_Time) + "&r_mode="+string(p_Mode) + "&r_difficulty="+string(p_Difficulty) + "&r_basement="+string(p_Basement));
Cargado = false;





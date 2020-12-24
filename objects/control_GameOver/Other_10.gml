/// @description  Enviar datos HTTP del top y debug
if(Enviado = true) exit;
//if(global.DEBUG_MODE)exit;
if(global.Modo_Challenge_Activo)exit;
if(global.Modo_Sub_Juego == "Daily")exit;
//var URL = "http://www.revampedpro.com/slimetower/addv11.php";
var URL = "http://37.187.20.198/skt1400/addv14.php";
var Name = "name=" + string(global.Nombre);
var Time = "time=" + string(global.Tiempo_Juego);
var Level = "level=" + string(global.Mapa_Nivel);
var Map = "map=" + string(get_map(global.Mapa_Tipo,4));
var MapLevel = "maplevel=" + string(global.Mapa_Tipo);
var Character = "character=" + string(global.characterSelected);
if(global.Modo_Juego == "Endless") MapLevel = "maplevel=" + string(global.Endless_Mob_Level);
var Basement = "basement=" + string(global.Mapa_Tipo > 6);
if(global.Modo_Juego == "Endless") Basement = "basement=" + string(0);
if(global.Slime_King_Dead = true and global.Modo_Juego = "Normal") {
    Level = "level=" + "";
    Map = "map=" + "Slimeking Chamber";
}
if(global.GameCompleted == true) {
    Map = "map=End Portal";
}
var Last_Room = "lastroom=" + string(global.DEBUG_NOMBRE_SALA);
var Enemigos = "enemies=" + string(global.DEBUG_ENEMIGOS_DERROTADOS);
var Version = "version=" + string(global.DEBUG_VERSION);
var Monedas = "coins=" + string(global.DEBUG_MONEDAS);
var Salud = "salud=" + string(global.DEBUG_SALUD);
//var MapDamage = "mapdamage=" + string(global.DEBUG_MAPAS_DAMAGE);
//var EnemyDamage = "enemydamage=" + string(global.DEBUG_ENEMY_DAMAGE);
//var MapAparecido = "mapaparecido=" + string(global.DEBUG_MAPAS_APARECIDOS);

var Modo = "";
if(global.Modo_Juego == "Normal")    Modo = "modo=0";
if(global.Modo_Juego == "Endless")   Modo = "modo=1";
if(global.Modo_Juego == "Arcade")    Modo = "modo=2";
if(global.Modo_Juego == "BossRush")  Modo = "modo=3";

var Dificultad = "";
if(global.Modo_Dificultad == "Normal")  Dificultad = "difficulty=0";
if(global.Modo_Dificultad == "Hard")    Dificultad = "difficulty=1";
if(global.Modo_Dificultad == "Insane")  Dificultad = "difficulty=2";

var Record = "record=0";
if(global.Modo_Juego == "Arcade") Record = "record=" + string(global.Control_Ronda);
if(global.Modo_Juego == "BossRush") Record = "record=" + string(global.bossRush_Boss);

//var Build = "build=";
//Build += global.Jugador_Items_Obtenidos;
//http_post_string( URL, Name + "&" + Time + "&" + Build + "&" + Level + "&" + Map + "&" + Last_Room + "&" + Enemigos + "&" + Version + "&" + Monedas + "&" + Salud + "&" + MapDamage + "&" + EnemyDamage + "&" + MapAparecido + "&" + Modo + "&" + Record + "&" + Dificultad + "&" + MapLevel + "&" + Basement );
http_post_string(URL, Name + "&" + Time + "&" + Character + "&" + Level + "&" + Map + "&" + Last_Room + "&" + Enemigos + "&" + Version + "&" + Monedas + "&" + Salud + "&" + Modo + "&" + Record + "&" + Dificultad + "&" + MapLevel + "&" + Basement);
//clipboard_set_text(URL + Name + "&" + Time + "&" + Character + "&" + Level + "&" + Map + "&" + Last_Room + "&" + Enemigos + "&" + Version + "&" + Monedas + "&" + Salud + "&" + Modo + "&" + Record + "&" + Dificultad + "&" + MapLevel + "&" + Basement);
Enviado = true;


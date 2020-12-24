/// @description  Contar el tiempo del run
global.Tiempo_Juego++;
if(instance_exists(obj_Jugador)) global.Tiempo_Juego = obj_Jugador.runTime;

// Actualizar global de rondas
if(global.Modo_Juego == "Arcade") global.Control_Ronda = Ronda;

// Force final bosses to appear
if(global.Mapa_Tipo == 6)  Dungeon_Boss = 99;
if(global.Mapa_Tipo == 11) Dungeon_Boss = 100;
if(global.Mapa_Tipo == 12) Dungeon_Boss = 98;

// Reveal map
if(map_revealed == false) and (player_has_item(6)) map_revealed = true;
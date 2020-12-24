// Dejar de ver la UI
control_Dungeon.visible = false;
control_UI.visible = false;
controlador_Movimiento.visible = false;
controlador_Disparo.visible = false;
obj_Jugador.visible = false;
control_Multi_Camara.visible = false;
alarm[0] = 200;

// Comenzar audio de jefe
audio_stop_all();
var BGMBoss = BGM_Boss;
if(global.Mapa_Tipo >= 7)				{ BGMBoss = BGM_BasementBoss; }
if(global.Mapa_Tipo == 14)				{ BGMBoss = BGM_TreasureBoss; }
if(control_Dungeon.Dungeon_Boss <  98)  { audio_play_sound(BGMBoss,				  1, 1); }
if(control_Dungeon.Dungeon_Boss == 98)  { audio_play_sound(BGM_PortalBoss,		  1, 1); } 
if(control_Dungeon.Dungeon_Boss == 99)  { audio_play_sound(BGM_Slimeking_Battle,  1, 1); } 
if(control_Dungeon.Dungeon_Boss == 100) { audio_play_sound(BGM_BasementPartyBoss, 1, 1); } 
if(control_Dungeon.Dungeon_Boss == 102) { audio_play_sound(BGM_SkeletonKingFight, 1, 1); } 
if(control_Dungeon.Dungeon_Boss == 104) { audio_play_sound(BGM_MasterMimicFight,  1, 1); } 


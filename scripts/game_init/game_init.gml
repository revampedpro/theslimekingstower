/// @description game_init()
/// @function game_init
function game_init() {
	// !! Esto se ejecuta una sola vez al cargar el logo del juego
	// !! Cuando se añadan mas challeges aumentarlos aqui 
	// Change autosave steam directory before sending it to steam
	// !! ^^^^^^----- lo mismo con personajes

	// PREPARAR ANTES DE UNA NUEVA RELEASE
	    // Ejecutar la room "config" después de "room_Logo" y seguir instrucciones.
	    // >> Remember to run "config" room before any new release and update this config
	    // >> Add new pools to "new_game" script 
		global.ITEMS_ALL = ",0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,";
		global.ITEMS_TREASURE = ",0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,20,21,22,23,24,26,28,29,30,32,33,35,36,37,38,39,40,42,44,45,46,47,48,49,51,52,54,55,56,57,58,59,60,61,62,64,66,67,68,69,70,71,72,73,74,75,76,77,79,80,81,82,84,85,86,87,88,89,90,91,93,95,96,97,98,99,100,101,102,103,104,105,106,107,108,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,132,133,134,135,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,167,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,187,188,189,190,191,192,194,195,196,197,198,199,201,202,218,219,221,222,223,226,227,228,229,230,231,232,233,234,235,240,241,243,244,245,246,247,248,249,252,260,261,262,263,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,287,288,292,293,294,295,296,297,298,299,300,302,303,304,305,306,307,308,310,311,312,313,314,315,316,317,318,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,";
		global.ITEMS_BOSSES = ",203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,236,237,238,239,254,255,256,257,258,259,289,290,291,301,";
		global.ITEMS_ARCADE = ",0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,50,51,53,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,73,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,103,104,105,106,107,108,109,110,111,112,113,115,116,117,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,189,190,191,192,193,194,195,196,197,198,199,200,201,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,310,311,312,313,319,320,321,322,323,324,325,326,328,329,330,331,332,333,334,335,336,337,338,339,340,341,343,344,345,346,347,348,349,350,";
		global.ITEMS_PASSIVE = ",0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,23,24,26,28,29,30,33,34,35,36,37,39,40,41,42,44,45,46,48,49,50,51,52,53,55,57,58,59,60,61,62,64,65,66,67,68,69,70,78,79,81,82,84,85,86,87,88,90,91,92,93,94,95,96,98,99,100,101,102,103,107,109,111,113,115,116,117,119,120,122,123,126,127,128,129,130,132,133,134,137,139,144,145,146,147,148,150,151,152,153,155,156,157,159,160,161,162,167,169,170,172,173,174,175,177,178,179,180,181,182,184,185,187,190,191,192,194,195,196,197,198,199,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,220,221,224,225,226,227,236,237,238,239,240,241,242,243,246,247,248,249,252,253,254,255,256,257,258,259,260,261,262,263,264,271,272,276,277,278,280,281,282,283,284,285,287,288,289,290,291,295,296,297,298,299,301,302,304,305,306,307,308,310,311,312,314,315,316,317,318,319,320,321,322,323,325,327,328,329,330,331,332,333,334,336,337,340,342,344,345,346,347,348,349,350,";
		global.ITEMS_SHOP = ",19,25,27,31,34,41,43,50,53,63,65,78,83,92,94,109,130,131,136,163,164,165,166,168,169,186,193,200,220,224,225,242,250,251,253,264,286,309,319,320,";
		global.BOSS_ALL = ds_list_create(); ds_list_add(global.BOSS_ALL,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,98,99,100,101,102,103,104);
		global.BOSS_RUSH = ds_list_create(); ds_list_add(global.BOSS_RUSH,0,1,2,4,5,6,7,9,12,13,14,16,19,21,22,24);
		global.Numero_De_Items = 351;
		global.Numero_De_Pets = 95;
        
	    // Cambiar número de version y nombre (premium o no) en Global Game Settings.
    
	    // Ejecutar cepillo (Clean project asset compiler cache).
    
	    // Comprobar las traducciones con el sistema en Español, Inglés y otro idioma.
    
	    // [PARA NUEVOS PJS O CHALLENGES] Actualizar "global.CHALLENGE_NUM" y "global.CHARACTER_NUM" un poco mas abajo.
	    global.CHARACTER_NUM = 14;  // Numero de personajes
	    global.CHALLENGE_NUM = 20;  // Numero de desafios
        
	    // Comprobar creation code de la room "room_Title" para cambiar las condiciones de juego al 100% completo.
    
	    // Desactivar modo debug.
	    global.DEBUG_MODE = false;
	
		// Cambiar numero de version
		global.GAME_VERSION = "1.5.1";
    
	    // Cambiar nombre de paquete "free" y "premium".
	    var version = game_version.free; /* Cambiar entre "free" y "premium"
        
	    // Sacar version con anuncios y sin anuncios. Probarlas.
	
		// Cambiar el lugar de guardado en la nube de Steam
    
	*/

	// Free/Premium
	switch(version) {

	    case game_version.free:
	        global.NO_ANUNCIOS = false;
	        global.Ads_Active = true;
	    break;
    
	    case game_version.premium:
	        global.NO_ANUNCIOS = true;
	        global.Ads_Active = false;
	    break;
    
	}

	// Debug
	global.DEBUGGER = global.DEBUG_MODE;
	global.gamepadEnabled = true;
	gml_release_mode(false);

	// Cloud
	global.STEAMID = -1;
	global.GOOGLEID = -1;
	//if(os_type == os_android) instance_create(0,0,objGooglePlayLogin);

	// Steam 
	global.STEAM = false;
	steam_enable();

	// Config
	global.URL = "http://37.187.20.198/skt1400/";
	global.COMPRESS_DETAILS = true; // Compress floor details into one object

	// Gamepad Mapping
	ini_open("save.ini");
	global.GP_UP           = ini_read_real("MCTRL", "gp_padu",       gp_padu);
	global.GP_DOWN         = ini_read_real("MCTRL", "gp_padd",       gp_padd);
	global.GP_LEFT         = ini_read_real("MCTRL", "gp_padl",       gp_padl);
	global.GP_RIGHT        = ini_read_real("MCTRL", "gp_padr",       gp_padr);
	global.GP_SHOOT_UP     = ini_read_real("MCTRL", "gp_face4",      gp_face4);
	global.GP_SHOOT_LEFT   = ini_read_real("MCTRL", "gp_face3",      gp_face3);
	global.GP_SHOOT_RIGHT  = ini_read_real("MCTRL", "gp_face2",      gp_face2);
	global.GP_SHOOT_DOWN   = ini_read_real("MCTRL", "gp_face1",      gp_face1);
	global.GP_PAUSE        = ini_read_real("MCTRL", "gp_start",      gp_start);
	global.GP_BOMB         = ini_read_real("MCTRL", "gp_shoulderr",  gp_shoulderr);
	global.GP_USE_ITEM     = ini_read_real("MCTRL", "gp_shoulderrb", gp_shoulderrb);
	global.GP_ACTION       = ini_read_real("MCTRL", "gp_shoulderl",  gp_shoulderl);
	ini_close();

	// Controller's control
	global.controllerID[0]  = false;
	global.controllerID[1]  = false;
	global.controllerID[2]  = false;
	global.controllerID[3]  = false;
	global.controllerID[4]  = false;
	global.controllerID[5]  = false;
	global.controllerID[6]  = false;
	global.controllerID[7]  = false;
	global.controllerID[8]  = false;
	global.controllerID[9]  = false;
	global.controllerID[10] = false;
	global.controllerID[11] = false;

	// Networking
	global.NETWORKING = false;		// Check whether you are connected to the network or not.
	global.NETID = -1;				// Your unique ID on the net, use to transfer data to your partner.
	global.NETWORK_COMMON_ID = 0;	// The unique ID for common objects (bullets, pots, enemies, etc.).
	global.NETWORK_HOST = -1;		// Check whether you are the host or not. This will dictate which player manages enemies and such. -1 means no online connection.

	// Destruction surfaces
	global.destructionSurface = ds_grid_create(50,50);

	// Player names for people that doesn't have internet
	global.PLAYER_NAMES = ds_list_create();
	ds_list_add(global.PLAYER_NAMES,"NERO","LULY","VIRGUZ","JOHNNY","HECROND","MEGA","REAPX","RED","DKD","CHUDO","CAPTAINC64","BLANKETURA","EEE","ROGER","FABIANOSAU","KDDKDK",
	"LOLGAMER","PANETTONE","ROMA","FOUNABLE","PANDORYS","SANIC","LORDDEMON","GIANN","HALAPPA","MILKA","CARAJITO","XENOKARTA","POPO","DARKMASTER","JUSH","RAKE",
	"MCTAHER","NIKO","DARKGHOST","PEDRO","DROLJA","LAZYDOGE","APPLE129","PHANTOM","DJOLE","ANANS","ENDERBC","ANITOXINTV","MANIX","IIZADOBYTE","LEMMESMASH",
	"TMMXISACLO","BENJA","PLUSXGAMES","JAJIARIBA","FRANCISCOR","XIVAN555X","WILD","PUUGZZ","LATREON","LASTPRISM","DABKING156","WOLF","WAFFLE","HARON1","GARBAG",
	"MATT","MKAY813","SANTIAGO","SHADOWNISH","SHERLOCK","AKAI","KENNEH","MEDUZNIK","MACUR","JONJON2892","SIMSURE","MUSANTOS","GDPANDA","Z3R0G4M35","NINJABLOCK",
	"JEFF","LUCKY","HIRO","MANCEBO","BR","LILBENNY","AGUSTIN","BLACKHAMME","TRISKELE","ELP1BES","KEDRAN","ALOH","NADEGRADE","MONIQUE","NADA","FAS","PAPYCHOULO",
	"IANK","MCCOOLGAME","KILLERDOM5","123433444U","LALO","HYPCC");

	// Macros
#macro view_xview __view_get(e__VW.XView,0)
#macro view_yview __view_get(e__VW.YView,0)
#macro view_wview __view_get(e__VW.WView,0)
#macro view_hview __view_get(e__VW.HView,0)
#macro RANDOM random(1)

	// Enums
	enum game_version {
		free,
		premium
	}

	// Cargar anuncios
	//GoogleMobileAds_Init("ca-app-pub-4953385532152169/8117953134"); 
	//GoogleMobileAds_LoadInterstitial();

	// Load AdColony
	//AdColony_Init("app737204d280d04f8abc", "vz610971032e9542339e", "v4vcf491b9c4818c49f9b6");

	// Load analytics
	var GATrackingID;
	if(os_type == os_ios) { GATrackingID = "UA-45482360-5"; }     // Replace this with your OWN iOS tracking ID
	else { GATrackingID = "UA-45482360-5"; }                      // Replace this with your OWN Android tracking ID
	var bDryRun = false; //for testing - no data is sent to Google Analytics if bDryRun is true
	//GoogleAnalytics_Init(GATrackingID, bDryRun);

	// Prepare UnityAds
	switch (os_type) {
	    case os_android: 
	    unity_ads_initialize("1192208");
	    break;
    
	    case os_ios: 
	    unity_ads_initialize("1192503"); 
	    break;
	}

	// Comprobaciones
	global.Dungeon_Map = -1;
	global.Pausado = false;
	global.Comprobar_Primera_Vez = false;
	global.Logo = false;
	global.Language = 1;
	global.bossRush_Boss = 0;
	if(os_get_language() == "en") global.Language = 1;
	if(os_get_language() == "es") global.Language = 0; 

	// Control
	global.GUI_Movimiento_X = 100;
	global.GUI_Movimiento_Y = 260;
	global.GUI_Disparo_X = 540;
	global.GUI_Disparo_Y = 260;
	global.ARCADE_RONDAS = 0;
	global.Endless_Mob_Level = 1;
	global.Modo_Challenge_Activo = false;
	global.UNIQUE_MAP_SEED = irandom(999999999);

	// Challenges
	for(i = 0; i < 30; i++) {
	    global.ChallengeUnlocked[i] = -1;
	    global.CharacterUnlocked[i,0] = -1;
	    global.CharacterUnlocked[i,1] = -1;
	    global.CharacterUnlocked[i,2] = -1;
	    global.CharacterUnlocked[i,3] = -1;
	}

	// Unlock hairry
	unlock_character(0);

	// Mapa
	global.Mapa_Nivel = 1;
	global.Mapa_Tipo = choose(1, 2, 3, 4, 5, 6);

	// Debug
	global.Tiempo_Juego = 0;
	global.DEBUG_MAP = -1;
	global.DEBUG_VERSION = "1.4.0";
	global.DEBUG_ENEMIGOS_DERROTADOS = 0;
	global.DEBUG_NOMBRE_SALA = "";
	global.DEBUG_MONEDAS = 0;
	global.DEBUG_SALUD = 0;
	global.DEBUG_MAPAS_DAMAGE = "";
	global.DEBUG_ENEMY_DAMAGE = "";
	global.DEBUG_MAPAS_APARECIDOS = "";
	global.characterSelected = -1;

	// Jugador
	global.Jugador_Monedas = 0;
	global.Jugador_Item_Usable = -1;
	global.Jugador_Pet = -1;

	// Iluminacion
	global.Darkness = 0;
	global.Shadow = spr_Block_Shadow;
	global.Shadow_Distance = 600;
	global.Sprite_Oscuridad_Casteada = noone;

	// Items
	global.Mapa_Tipo = 1;
	global.BOSS_ITEMS[0] = -1;
	global.PASSIVE_ITEMS[0] = -1;

	// Modos
	global.Modo_Juego = "Normal";
	global.Modo_Sub_Juego = "";
	global.Modo_Dificultad = "Normal";
	global.Modo_Challenge = -1;
	global.Modo_Challenge_Activo = false;
	global.Challenge_Items = "";

	// Cargar datos si existe
	ini_open( "save.ini" );
	global.Camara_Modo       = ini_read_real("S", "C", 1);
	global.Control_Modo      = ini_read_real("S", "M", 1);
	global.Control_Sonido    = ini_read_real("S", "S", 0);
	global.Control_Autosave  = ini_read_real("S", "AS", 1);
	global.Armario_Item      = ini_read_real("S", "A", -1);
	global.Monedas_General   = ini_read_real("S", "MG", 0);
	global.Quality           = ini_read_real("S", "QA", 2);
	global.Ads_Active        = ini_read_real("S", "KJ", 1);
	global.Jugador_Pet       = ini_read_real("S", "PPT", -1);
	global.PetVisible        = ini_read_real("S", "PBLE", 1);
	global.BombTapMode       = ini_read_real("S", "BTM", 1);
	global.GAME_COMPLETED    = ini_read_real("FLGM", "0", false);
	global.FULLSCREEN        = ini_read_real("S", "FLS", false);
	global.Ads_Active		 = true;

	// Go fullscreen
	if(global.FULLSCREEN) and (!os_type == os_android) window_set_fullscreen(true);

	// Desbloquear los items que hayamos cogido
	global.Items_Desbloqueados = ini_read_string("S", "I", "-1");
	string_explode(global.Items_Desbloqueados,"|");
	global.Items_Desbloqueados = "";
	for( kk = 0; kk < count_items(); kk++ ) {
	    if( kk <  array_length_1d(level) )global.Items_Desbloqueados += string( level[kk] ) + "|";
	    if( kk >= array_length_1d(level) )global.Items_Desbloqueados += "0|";
	}

	// Desbloquear las mascotas que tengamos
	global.Pets_Desbloqueados = ini_read_string("S", "IPS", "0");
	string_explode(global.Pets_Desbloqueados,"|");
	global.Pets_Desbloqueados = "";
	for( kk = 0; kk < count_pets(); kk++ ) {
	    if( kk <  array_length_1d(level) ) global.Pets_Desbloqueados += string(level[kk]) + "|";
	    if( kk >= array_length_1d(level) ) global.Pets_Desbloqueados += "0|";
	}

	// Prepare rooms
	init_room_layouts();

	// Control de sonido
	audio_group_load(audiogroup_music);
	switch(global.Control_Sonido) {
	    case 0: audio_master_gain(1); audio_group_set_gain(audiogroup_default, 1, 0); audio_group_set_gain(audiogroup_music, 1, 0); break;
	    case 1: audio_master_gain(1); audio_group_set_gain(audiogroup_default, 1, 0); audio_group_set_gain(audiogroup_music, 0, 0); break;
	    case 2: audio_master_gain(1); audio_group_set_gain(audiogroup_default, 0, 0); audio_group_set_gain(audiogroup_music, 1, 0); break;
	    case 3: audio_master_gain(0); break;
	}
	ini_close();

	// Desactivar application surface
	display_set_gui_size(640,360);
	surface_resize(application_surface, window_get_width(), window_get_height()); 
	if(global.Quality < 2) {
	    application_surface_enable(false);
	    application_surface_draw_enable(false);
	} else {
	    application_surface_enable(false);
	    application_surface_draw_enable(false);
	}
	device_mouse_dbclick_enable(false);

	for(var i = 0; i < 8; i++) {
		if(gamepad_is_connected(i)) {
			window_mouse_set(0,0);
		}
	}

	var DEBUG = 0;
	if(DEBUG == 1) {
	    audio_master_gain(1); //debug
	    room_goto_next();
	}



}

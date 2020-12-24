/// @description  Variables

// Ficheros
Guardado_Seguridad = 0;

// Anuncios
Anuncio = false;
GameOver = false;
Min = room_speed * 60;
Tiempo_Anuncio_Min = 4*Min;
Tiempo_Anuncio_Max = 6*Min;
Tiempo_Anuncio = 0;
Tiempo_Objetivo = irandom_range(Tiempo_Anuncio_Min,Tiempo_Anuncio_Max);
//GoogleMobileAds_LoadInterstitial();

// Fisicas
Velocidad_H = 0;
Velocidad_V = 0;
Velocidad_H_Max = 1.35;
Velocidad_V_Max = 1.35;
Aceleracion_H = 0.5;
Aceleracion_V = 0.5;
Fuerza_Rozamiento = 0.5;

// Skill
Cargas = 999;
Cargas_Max = 999;

// Variables de combate
HP_Max = 6;
HP = HP_Max;
HP_Extra[0] = -1;
HP_Extra_Q[0] = 0;
HP_Extra_S = 0;
Knockback = 0.5; // Cantidad de knockback que haces a los enemigos
Fuerza = 2; // Daño de ataque
Velocidad_Disparo = 2.5; // Velocidad del disparo
Cadencia_Disparo = 4.5; // Balas/segundo
Penetracion_Disparo = 0; // Veces que puede penetrar un disparo
Caida_Disparo = 20; // Tiempo antes de que la bala empiece a caer
Delay_Invencibilidad = 90; // Tiempo durante el que no puedes ser golpeado
Bullet_Size = 1; // Tamaño de la bala
Tipo_Municion = obj_Jugador_Disparo; // Tipo de municion
Rockets = 0; // The amount of rockets the player has
Level = 1;
Lives = 0;
Flying = false; // Is the player flying?
wings_index = 0; // Control index of the wings' animation
Experience = 0;
Experience2 = 0;
ExperienceMax = 100;
AbsorbedItems[0] = -1;
stats = 0;
rage = 0;

// Challenge#09
if(challenge_check(8)) {
    Delay_Invencibilidad = 1;
    HP_Max = 32;
    HP = HP_Max;
}

// Cargar dificultad
var Dificultad_Ratio = 0;
if(global.Modo_Dificultad = "Normal") Dificultad_Ratio = 1;
if(global.Modo_Dificultad = "Hard")   Dificultad_Ratio = 2;
if(global.Modo_Dificultad = "Insane") Dificultad_Ratio = 5;
Delay_Invencibilidad /= Dificultad_Ratio;

// Consumables
keys = 4;
bosskey = false;
bombs = 12;
doubletap = -1;

// Bonus temporales
temp_Fuerza = 0;
temp_Cadencia_Disparo = 0;
temp_Strike = false;
Rafaga = 0;
Fuerza_Temporal = 0;
deodorant_counter = 0;
can_attack = true;
can_recharge = false;
use_item_on_attack = false;
paralisis = -1;
Pray = false;

// Etc
recolocate = -1;
crownTaken = false;
player_has_shot = false; // Check if the player has shot in this room

// Variables de salas especiales
Bonus_Sacrificio = 4;

// Image
image_speed = 0.15;
image_Direction = 0;
Show_Item_ID = -1;
Disparo_Move = -1;
flashColor = c_white;
bulletShootAnimation = false;

// Time
runTime = 0;

// Controles
tecla_Arriba = ord("W");
tecla_Izquierda = ord("A");
tecla_Abajo = ord("S");
tecla_Derecha = ord("D");
tecla_Disparo_Arriba = vk_up;
tecla_Disparo_Abajo = vk_down;
tecla_Disparo_Izquierda = vk_left;
tecla_Disparo_Derecha = vk_right;

// Load hero
var starting_items = get_character(global.characterSelected);
sprite_index = spr_Parado_Abajo;
sprWings = sprPlayerWings;

// Controller
controlledBy = -1;

// Initialize item vars
player_item_count = 0;
player_item_count_max = 90;
player_item_195 = player_has_item(195);
player_item_240 = player_has_item(240);
player_item_96  = player_has_item(96);
player_item_69  = player_has_item(69);
player_item_347 = player_has_item(347);
player_item_93  = player_has_item(93);
player_item_7   = player_has_item(7);
player_item_33  = player_has_item(33);
player_item_302 = player_has_item(302);
player_item_240 = player_has_item(240);
player_item_348 = player_has_item(348);
player_item_349 = player_has_item(349);
player_item_334 = player_has_item(334);
player_item_340 = player_has_item(340);
player_item_332 = player_has_item(332);
player_item_331 = player_has_item(331);
player_item_144 = player_has_item(144);
player_item_500 = player_has_item(500);
player_item_501 = player_has_item(501);
player_item_325 = player_has_item(325);
player_item_122 = player_has_item(122);
player_item_12  = player_has_item(12);
player_item_321 = player_has_item(321);
player_item_330 = player_has_item(330);
player_item_298 = player_has_item(298);


/// Bonus de items
bullet_hell						= 0;
bullet_hell_bullets				= 0;
bullet_hell_bullets_total		= 0;
bullet_hell_direction			= 0;
Bonus_Odd_Mushroom				= -1;
Laser_Direction					= -1;
Bonus_Spike_Damage				= 0;
Bonus_HP_Leech					= 0;
Bonus_HP_Leech_Max				= 0;
Bonus_Magic_Shield				= 0; 
Bonus_Mob_Doctor_Q				= 0;
Bonus_Mob_Thief_Q				= 0;
Bonus_100Punch					= 0;
Bonus_TensionRelax_t			= 0;
Bonus_Firewalker				= 0;
Bonus_Phantom_Shield_Activo		= false;
Bonus_HoverBoots				= false;

// Compañeros
Bonus_Friend_Cthulhu		= false;
Bonus_Friend_Blue_Cthulhu	= false;
Bonus_Friend_Green_Cthulhu	= false;
Bonus_Friend_Yellow_Cthulhu = false;
Bonus_Friend_Gold_Cthulhu	= false;

// Friends
Friends[0] = -1;
FriendsSPR[0] = -1;
Friends_R = 0;

/// Pet Bonus
myPet = -1;

// Declare bonus
Pet_Bonus_LittleSlime			= false;
Pet_Bonus_MageSlime				= false;
Pet_Bonus_WizardSlime			= false;
Pet_Bonus_SkullSlime			= false;
Pet_Bonus_Bat					= false;
Pet_Bonus_Medusa				= false;
Pet_Bonus_MiniMedusa			= false;
Pet_Bonus_Snake					= false;
Pet_Bonus_Spider				= false;
Pet_Bonus_Mitosis				= false;
Pet_Bonus_Minitosis				= false;
Pet_Bonus_Tomahawk				= false;
Pet_Bonus_MotherSlime			= false;
Pet_Bonus_Hardmahawk			= false;
Pet_Bonus_Summoner				= false;
Pet_Bonus_ChainSlime			= false;
Pet_Bonus_ThiefSlime			= false;
Pet_Bonus_Boss_OrangeSlime		= false;
Pet_Bonus_Boss_GreenSlime		= false;
Pet_Bonus_Boss_RedSlime			= false;
Pet_Bonus_Boss_BlackSlime		= false;
Pet_Bonus_Boss_YellowSlime		= false; 
Pet_Bonus_Boss_WhiteSlime		= false;
Pet_Bonus_Boss_AquaSlime		= false;
Pet_Bonus_Boss_GlowSlime		= false;
Pet_Bonus_Boss_ShadowSlime		= false;
Pet_Bonus_Boss_Gigadusa			= false;
Pet_Bonus_Boss_GreenGigadusa	= false;
Pet_Bonus_Boss_MadSlime			= false;
Pet_Bonus_Boss_TheGreatPapasa	= false;
Pet_Bonus_Boss_Creep			= false;
Pet_Bonus_Slimeking				= false;
Pet_Bonus_Slimeking_Counter		= 0;
Pet_Bonus_BlockMonster			= false;
Pet_Bonus_PotMonster			= false;
Pet_Bonus_RatSlime				= false;

// Activate Bonus
string_explode(global.Pets_Desbloqueados,"|");
if(global.Jugador_Pet != -1) {
    var lvllvl = level[global.Jugador_Pet];
    if(real(lvllvl) >= 5) {
        switch(global.Jugador_Pet) {
            case 0:  Velocidad_H_Max*=1.5; Velocidad_V_Max*=1.5; break;
            case 1:  Fuerza*=1.25; break;
            case 2:  Knockback+=0.5; break;
            case 3:  Pet_Bonus_LittleSlime = true; break;
            case 4:  Pet_Bonus_MageSlime = true; break;
            case 5:  Pet_Bonus_WizardSlime = true; break;
            case 6:  Pet_Bonus_SkullSlime = true; break;
            case 7:  Pet_Bonus_Bat = true; break;
            case 8:  Pet_Bonus_Medusa = true; break;
            case 9:  Pet_Bonus_MiniMedusa = true; break;
            case 10: Pet_Bonus_Snake = true; break;
            case 12: Pet_Bonus_Spider = true; break;
            case 15: Pet_Bonus_Mitosis = true; break;
            case 16: Pet_Bonus_Minitosis = true; break;
            case 17: Pet_Bonus_Tomahawk = true; break;
            case 18: Pet_Bonus_MotherSlime = true; break;
            case 19: Pet_Bonus_Hardmahawk = true; break;
            case 20: Pet_Bonus_Summoner = true; break;
            case 21: Pet_Bonus_ChainSlime = true; break;
            case 22: Pet_Bonus_ThiefSlime = true; break;
            case 23: Knockback+=1; break;
            case 24: Fuerza*=1.5; break;
            case 25: Velocidad_H_Max*=2; Velocidad_V_Max*=2; break;
            case 26: Pet_Bonus_Boss_OrangeSlime = true; break;
            case 27: Pet_Bonus_Boss_GreenSlime = true; break;
            case 28: Pet_Bonus_Boss_RedSlime = true; break;
            case 29: Pet_Bonus_Boss_BlackSlime = true; break;
            case 30: Pet_Bonus_Boss_YellowSlime = true; break;
            case 31: Pet_Bonus_Boss_WhiteSlime = true; break;
            case 32: Pet_Bonus_Boss_AquaSlime = true; break;
            case 33: Pet_Bonus_Boss_GlowSlime = true; break;
            case 34: Pet_Bonus_Boss_ShadowSlime = true; break;
            case 35: Pet_Bonus_Boss_Gigadusa = true; break;
            case 36: Pet_Bonus_Boss_GreenGigadusa = true; break;
            case 37: Pet_Bonus_Boss_MadSlime = true; break;
            case 38: Pet_Bonus_Boss_TheGreatPapasa = true; break;
            case 39: Pet_Bonus_Boss_Creep = true; break;
            case 40: Pet_Bonus_Slimeking = true; break;
            case 41: Pet_Bonus_BlockMonster = true; break;
            case 42: Pet_Bonus_PotMonster = true; break;
            case 43: Pet_Bonus_RatSlime = true; break;
        }
        myPet = global.Jugador_Pet;
    }
}

if(player_has_pet(46)) keys  += 5; // Planet Slime
if(player_has_pet(47)) bombs += 5; // Big Bomb

/// Daily items bonus
if(global.Modo_Sub_Juego == "Daily") {
    string_explode(global.Daily_Items, "|");
    for(i = 0; i < string_count("|", global.Daily_Items); i++) {
        player_get_item(real(level[i]));
    }
}

if(challenge_check(global.Modo_Challenge)) {
    string_explode(global.Challenge_Items, "|");
    for(i = 0; i < string_count("|", global.Challenge_Items); i++) {
        player_get_item(real(level[i]));
    }
}

/// Starting Items
// Receive items
if(starting_items != -1) {
    for(i = 0; i < ds_list_size(starting_items); i++) {
        var starting_item_ID = ds_list_find_value(starting_items,i);
        player_get_item(starting_item_ID,true);
    }
    ds_list_destroy(starting_items);
}

// Receive pet items
if(player_has_pet(80)) player_get_item(349,true);

if(player_has_pet(82)) player_get_item(339,true);
if(player_has_pet(83)) player_get_item(346,true);
if(player_has_pet(84)) player_get_item(304,true);
if(player_has_pet(85)) player_get_item(104,true);
if(player_has_pet(91)) player_get_item(119,true);
if(player_has_pet(94)) player_get_item(8,true);

///Langs & optimisation
lang29 = lang(29);
if(os_type == os_windows) lang29 = lang(5011);
ShowItemID = -1;


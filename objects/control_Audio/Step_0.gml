// Si es la sala arcade usar su musica especial
if(global.Modo_Juego == "Arcade") {
    var BGM = BGM_Arcade;
    if(!audio_is_playing(BGM))      { audio_play_sound(BGM, 1, 1); }
    exit;
}
if(global.Modo_Juego == "BossRush") {
    var BGM = BGM_BossRush;
    if(!audio_is_playing(BGM))      { audio_play_sound(BGM, 1, 1); }
    exit;
}

// Controlar el volumen al entrar en salas especiales
var BGM = BGM_Alpha;
var BGMBoss = BGM_Boss;
if(global.Mapa_Tipo = 1)    BGM = BGM_Alpha;
if(global.Mapa_Tipo = 2)    BGM = BGM_Beta;
if(global.Mapa_Tipo = 3)    BGM = BGM_Delta;
if(global.Mapa_Tipo = 4)    BGM = BGM_Epsilon;
if(global.Mapa_Tipo = 5)    BGM = BGM_Gamma;
if(global.Mapa_Tipo = 6)    BGM = BGM_Omega;
if(global.Mapa_Tipo = 7)  { BGM = BGM_Pi;			BGMBoss = BGM_BasementBoss; }
if(global.Mapa_Tipo = 8)  { BGM = BGM_Ohm;			BGMBoss = BGM_BasementBoss; }
if(global.Mapa_Tipo = 9)  { BGM = BGM_Tau;			BGMBoss = BGM_BasementBoss; }
if(global.Mapa_Tipo = 10) { BGM = BGM_Theta;		BGMBoss = BGM_BasementBoss; }
if(global.Mapa_Tipo = 11) { BGM = BGM_Sigma;		BGMBoss = BGM_BasementBoss; }
if(global.Mapa_Tipo = 12) { BGM = BGM_Portal;		BGMBoss = BGM_PortalBoss;   }
if(global.Mapa_Tipo = 13) { BGM = BGM_Glitch;		BGMBoss = BGM_PortalBoss;   }
if(global.Mapa_Tipo = 14) { BGM = BGM_InsideMimic;	BGMBoss = BGM_TreasureBoss; }
if(global.Mapa_Tipo = 15) { BGM = BGM_SkeletonLair;	BGMBoss = BGM_SkeletonKingFight; }
if(global.Mapa_Tipo = 16) { BGM = BGM_Avarice;		BGMBoss = BGM_MasterMimicFight; }



if(global.Control_Sonido != 1) {
    if(audio_is_playing(snd_Odd_Mushroom)) {
        if(audio_is_playing(BGMBoss)) {
            audio_sound_gain( BGMBoss, 0.1, 250 );
        }
        if(audio_is_playing(BGM_Slimeking_Battle)) {
            audio_sound_gain( BGM_Slimeking_Battle, 0.1, 250 );
        }
        if(audio_is_playing(BGM_BasementPartyBoss)) {
            audio_sound_gain(BGM_BasementPartyBoss, 0.1, 250);
        }
        if(audio_is_playing(BGM_PortalBoss)) {
            audio_sound_gain(BGM_PortalBoss, 0.1, 250);
        }
    } else {
        if(audio_is_playing(BGMBoss)) {
            audio_sound_gain(BGMBoss, 1, 250);
        }
        if(audio_is_playing(BGM_Slimeking_Battle)) {
            audio_sound_gain(BGM_Slimeking_Battle, 1, 250);
        }
        if(audio_is_playing(BGM_BasementPartyBoss)) {
            audio_sound_gain(BGM_BasementPartyBoss, 1, 250);
        }
        if(audio_is_playing(BGM_PortalBoss)) {
            audio_sound_gain(BGM_PortalBoss, 1, 250);
        }
    }
}

if(!audio_is_playing(BGM)) and (check_room("centro") == 2) {
    audio_stop_all();
}

if(global.Control_Sonido != 1) {
    if(audio_is_playing(snd_New_Floor_Start) or (audio_is_playing(snd_Odd_Mushroom)) or (audio_is_playing(sndBossKey)) or (audio_is_playing(sndCharacterUnlocked)) or audio_is_playing( snd_Room_Treasure ) or audio_is_playing( snd_Room_Shop ) or audio_is_playing( snd_Room_HealthShop ) or audio_is_playing( snd_Get_Item_Big ) ) {
        audio_sound_gain(BGM, 0.1, 250);
        audio_sound_gain(BGM_Miniboss, 0.1, 250);    
    } else {
        audio_sound_gain(BGM, 1, 1000);
        audio_sound_gain(BGM_Miniboss, 1, 1000);
    }
}

// Comprobar si esta en la sala del jefe
if((check_room("centro") = 3 and instance_exists(parent_Enemigo)) or room = room_Transicion_Jefe) {
        if(audio_is_playing(BGM))      { audio_stop_sound(BGM); }
} else {
    if(!audio_is_playing(BGM_Miniboss)) {
        if(!audio_is_playing(BGM))                                        { audio_play_sound(BGM, 1, 1); }
        if(audio_is_playing(BGMBoss) and room != room_Jefe_KingSlime)     { audio_stop_sound(BGMBoss); }
        if(audio_is_playing(BGMBoss) and room != room_Jefe_BasementParty) { audio_stop_sound(BGMBoss); }
    }
}

// Lanzar musica de miniboss
if(room == room_Bosskey) {
    if(instance_exists(parent_Enemigo)) {
        if(!audio_is_playing(BGM_Miniboss)) {
            audio_stop_all();
            audio_play_sound(BGM_Miniboss,0,0);
        }
    } else {
        if(audio_is_playing(BGM_Miniboss)) {
            audio_stop_sound(BGM_Miniboss);
        }
    }
}

// Skeleton King music control
if(audio_is_playing(BGM_SkeletonKingFight)) and (instance_exists(objJefeSkeletonKingCrawl)) {
		audio_stop_sound(BGM_SkeletonKingFight);
}
if(instance_exists(objJefeSkeletonKingCrawl)) and (!audio_is_playing(BGM_SkeletonKingFightB)) {
	if(objJefeSkeletonKingCrawl.phase == 2) {
		audio_stop_sound(BGM_SkeletonKingFightB);
		audio_play_sound(BGM_SkeletonKingFightB,1,1);
	}
}
if(!instance_exists(objJefeSkeletonKingCrawl)) and (audio_is_playing(BGM_SkeletonKingFightB)) {
	audio_stop_sound(BGM_SkeletonKingFightB);	
}
if(audio_is_playing(BGM_SkeletonKingFight)) and (!instance_exists(objJefeSkeletonKingCrawl)) {
	audio_stop_sound(BGM_SkeletonKingFightB);
}


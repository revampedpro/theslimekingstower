/// @description  Langs & Optimisation
lang90 = lang(90);
timer_stamp = "";
alarm[7] = 1;
nombre_mapa = "";
map_revealed = false;
room_easing = 0;
map_spr = [];	
map_x = [];	
map_y = [];	
map_s = [];	
map_alpha = [];
map_index = [];

// Reset destruction surfaces
ds_grid_clear(global.destructionSurface,-1);

/// Steam Achievements
if(global.Modo_Juego == "Normal") {
    steam_unlock("Adventurer");
}

// Floor unlocks
switch(global.Mapa_Tipo) {
    case  2: steam_unlock("L_BETA");	break;
    case  3: steam_unlock("L_DELTA");	break;
    case  4: steam_unlock("L_EPSILON"); break;
    case  5: steam_unlock("L_GAMMA");	break;
    case  6: steam_unlock("L_OMEGA");	break;
    case  7: steam_unlock("L_PI");		break;
    case  8: steam_unlock("L_OHM");		break;
    case  9: steam_unlock("L_TAU");		break;
    case 10: steam_unlock("L_THETA");	break;
    case 11: steam_unlock("L_SIGMA");	break;
    case 12: steam_unlock("L_PORTAL");	break;
}

///Dungeon generator (b)
// data
random_set_seed(global.UNIQUE_MAP_SEED);
Dungeon_Ancho = 15;
Dungeon_Alto = 15;
rooms = 12 + global.Mapa_Tipo;
alarm[9] = 2;
special_rooms = choose(2,2,3);
nombre_mapa = "";
treasure_room_appear = true; // Can treasure rooms spawn?
first_visit = true;

// Drop control
keyDropped = 0;
bombDropped = 0;

// Tower boss get
dungeon_TowerBoss = ds_list_create();
    string_explode(global.Bosses_Tower,",");
    for(i = 0; i < string_count(",",global.Bosses_Tower); i++) {
        if(real(level[i]) != -1) ds_list_add(dungeon_TowerBoss,real(level[i]));
    }
    ds_list_shuffle(dungeon_TowerBoss);
    Dungeon_Boss = ds_list_find_value(dungeon_TowerBoss,0);
    global.Bosses_Tower = string_replace(global.Bosses_Tower,","+string(Dungeon_Boss)+",",",");
ds_list_destroy(dungeon_TowerBoss);

// Basement boss get
if(global.Mapa_Tipo >= 7) {
    dungeon_BasementBoss = ds_list_create();
        string_explode(global.Bosses_Basement,",");
        for(i = 0; i < string_count(",",global.Bosses_Basement); i++) {
            if(real(level[i]) != -1) ds_list_add(dungeon_BasementBoss,real(level[i]));
        }
        ds_list_shuffle(dungeon_BasementBoss);
        Dungeon_Boss = ds_list_find_value(dungeon_BasementBoss,0);
        global.Bosses_Basement = string_replace(global.Bosses_Basement,","+string(Dungeon_Boss)+",",",");
    ds_list_destroy(dungeon_BasementBoss);
}

// Final boss get
if(global.Mapa_Tipo = 6)  Dungeon_Boss = 99;  // Jefe final
if(global.Mapa_Tipo = 11) Dungeon_Boss = 100; // Jefe final (Basement)
if(global.Mapa_Tipo = 12) Dungeon_Boss = 98;  // Jefe final (Portal)
if(global.Mapa_Tipo = 13) Dungeon_Boss = 101; // Dark Slimeking (Void)
if(global.Mapa_Tipo = 14) Dungeon_Boss = -1;  // No boss on inside mimic
if(global.Mapa_Tipo = 15) Dungeon_Boss = 102; // The Skeleton King
if(global.Mapa_Tipo = 16) Dungeon_Boss = 104; // Master Mimic
Especial_Usada = 0; // Comprobante de si la sala especial ha sido usada ya

// Special cases
player_chan_shoot = true;
player_recharge = false;
if(global.characterSelected == 3) { player_chan_shoot = false; player_recharge = true; }

// Set a God Shop
if(global.Mapa_Tipo != 6) global.GodShopCanSpawn = true;
god_items = ds_list_create();
ds_list_add(god_items,500,501,502,503,504);
ds_list_shuffle(god_items);
God_Shop[0] = ds_list_find_value(god_items,0);
God_Shop[1] = ds_list_find_value(god_items,1);
God_Shop[2] = ds_list_find_value(god_items,2);
God_Shop_Price[0] = get_item(God_Shop[0],12);
God_Shop_Price[1] = get_item(God_Shop[1],12);
God_Shop_Price[2] = get_item(God_Shop[2],12);
ds_list_destroy(god_items);

// Variables del jugador
for(ji = 0; ji < 1; ji++) {
    Jugador_Items[ji] = 0; // Matriz que contiene los items que ha recogido el jugador
}

// Set boss chest reward
//Dungeon_Boss_Chest = random_boss_item();
Dungeon_Boss_Chest = get_random_item_from_pool("boss");

// Activate challenge if active
if(global.Modo_Challenge_Activo == true) {
    get_challenge(global.Modo_Challenge,-1,true);
}

// KeyMimic
KeyMimic_Value = 1;

// Challenge#07: Randomizer
if(instance_exists(obj_Jugador)) {
    if(challenge_check(6)) and (global.Mapa_Tipo != 1) {
        with(obj_Jugador) change_build();
    }
}

// Tell GoogleAnalytics that a new dungeon was created
//GoogleAnalytics_SendEvent("ingame","games");
//GoogleAnalytics_SendEvent("boss_appear",string(Dungeon_Boss));

// Item que tenia tu ultimo playthrough
ini_open("save.ini");
    Ultimo_Yo_Item = ini_read_real("S", "UL", 1);
ini_close();

// Si ya existia, lo cambia por damage up
if(array_exists(Jugador_Items,Ultimo_Yo_Item)) Ultimo_Yo_Item = 1;

// Matriz que guardara los objetos que hay en cada sala
global.Dungeon_Room_Items_Cantidad	= 0;
global.Dungeon_Room_Items_ID[0]		= -1;
global.Dungeon_Room_Items_x[0]		= -1;
global.Dungeon_Room_Items_y[0]		= -1;
global.Dungeon_Room_Items_i[0]		= -1;
global.Dungeon_Room_Items_j[0]		= -1;
global.Dungeon_Room_Items_extra[0]  = -1;
global.Dungeon_Room_Items_extra2[0] = -1;


// Generar las habitaciones especiales
var special_rooms_type = ds_list_create();
ds_list_add(special_rooms_type, choose(8,23),9,10,11,choose(12,25,26),13,14,15,16,18,27,28,30,31);
if(array_exists(Jugador_Items,Ultimo_Yo_Item)) ds_list_delete(special_rooms_type,ds_list_find_index(special_rooms_type,11)); // Si ya tiene el ultimo objeto, desaparece la room Ultimo Yo
if(global.Jugador_Pet == 11) ds_list_add(special_rooms_type, 9, 9, 9);
if(global.Jugador_Pet == 13) ds_list_add(special_rooms_type, 15, 15, 15);
if(player_has_item(278)) {
    ds_list_clear(special_rooms_type);
    ds_list_add(special_rooms_type,1,1,1,1,1,1,1,1,1,1);
}

// setup matrix
for(i = 0; i < Dungeon_Ancho; i++) {
    for(j = 0; j < Dungeon_Alto; j++) {
        Dungeon[i,j] = 0;
        Dungeon_Visitado[i,j] = 0;
        Dungeon_Enemigos[i,j] = "";
        Dungeon_Seed[i,j] = random(99999);
    }
}

// rooms map
rl = ds_list_create();

// create random initial room
iri = 2+irandom(Dungeon_Ancho-1-4);
irj = 2+irandom(Dungeon_Alto-1-4);
Dungeon[iri,irj] = 2;
var m = ds_map_create();
m[? "i"] = iri;
m[? "j"] = irj;
m[? "v"] = 0;
ds_list_add(rl, m);

// populate rooms until desired number of rooms has been created
n = 0;
while(n < rooms) {
    if(ds_list_size(rl)<=0)n=rooms;
    ds_list_shuffle(rl);
    rm = rl[| 0];
    ri = rm[? "i"];
    rj = rm[? "j"];
    rv = rm[? "v"];
    rv++;
    rm[? "v"] = rv;
    if(rv >= 3) { ds_map_destroy(rl[| 0]); ds_list_delete(rl, 0); continue; }
    u = 0; d = 0; l = 0; r = 0;
    if(ri > 0   and Dungeon[ri-1,rj]==0) l = 1;
    if(ri < Dungeon_Ancho-1 and Dungeon[ri+1,rj]==0) r = 1;
    if(rj > 0   and Dungeon[ri,rj-1]==0) u = 1;
    if(rj < Dungeon_Alto-1 and Dungeon[ri,rj+1]==0) d = 1;
    if(l==0&&r==0&&u==0&&d==0) continue;
    dir = ds_list_create();
    if(l)ds_list_add(dir, "l");
    if(r)ds_list_add(dir, "r");
    if(u)ds_list_add(dir, "u");
    if(d)ds_list_add(dir, "d");
    ds_list_shuffle(dir);
    var d = dir[| 0];
    switch(d) {
        case "u": Dungeon[ri,rj-1]=1; var m = ds_map_create(); m[? "i"] = ri; m[? "j"] = rj-1; m[? "v"] = 0; ds_list_add(rl, m); break;
        case "d": Dungeon[ri,rj+1]=1; var m = ds_map_create(); m[? "i"] = ri; m[? "j"] = rj+1; m[? "v"] = 0; ds_list_add(rl, m); break;
        case "l": Dungeon[ri-1,rj]=1; var m = ds_map_create(); m[? "i"] = ri-1; m[? "j"] = rj; m[? "v"] = 0; ds_list_add(rl, m); break;
        case "r": Dungeon[ri+1,rj]=1; var m = ds_map_create(); m[? "i"] = ri+1; m[? "j"] = rj; m[? "v"] = 0; ds_list_add(rl, m); break;
    }
    n++;
    ds_list_destroy(dir);
}

// fill a list with rooms next to a border
var bl = ds_list_create();
for(i = 0; i < Dungeon_Ancho; i++) {
    for(j = 0; j < Dungeon_Alto; j++) {
        if(Dungeon[i,j] == 1) {
            if(i > 0   and Dungeon[i-1,j]==0) {l = 1; Dungeon[i-1,j]=999; var bm = ds_map_create(); bm[? "i"] = i-1; bm[? "j"] = j; bm[? "d"] = "l"; ds_list_add(bl, bm); }
            if(i < Dungeon_Ancho-1 and Dungeon[i+1,j]==0) {r = 1; Dungeon[i+1,j]=999; var bm = ds_map_create(); bm[? "i"] = i+1; bm[? "j"] = j; bm[? "d"] = "r"; ds_list_add(bl, bm); }
            if(j > 0   and Dungeon[i,j-1]==0) {u = 1; Dungeon[i,j-1]=999; var bm = ds_map_create(); bm[? "i"] = i; bm[? "j"] = j-1; bm[? "d"] = "u"; ds_list_add(bl, bm); }
            if(j < Dungeon_Alto-1 and Dungeon[i,j+1]==0) {d = 1; Dungeon[i,j+1]=999; var bm = ds_map_create(); bm[? "i"] = i; bm[? "j"] = j+1; bm[? "d"] = "d"; ds_list_add(bl, bm); }
        }
    }
}
for(i = 0; i < Dungeon_Ancho; i++) {
    for(j = 0; j < Dungeon_Alto; j++) {
        if(Dungeon[i,j] == 999) Dungeon[i,j] = 0;
    }
}

// further room with a border is boss room
var md = 0;
var mr = -1;
var mi = 0;
for(i = 0; i < ds_list_size(bl); i++) {
    bm = bl[| i];
    pmd = point_distance(bm[? "i"], bm[? "j"], iri, irj);
    if(pmd > md) {
        md = pmd;
        mr = bm;
        mi = i;
    }
}
Dungeon[mr[? "i"],mr[? "j"]] = 3;
ds_map_destroy(mr);
ds_list_delete(bl, mi);

// a random room will be the treasure room
var rt = 4;
if(!treasure_room_appear) {
    ds_list_shuffle(special_rooms_type);
    rt = ds_list_find_value(special_rooms_type, 0); 
    ds_list_delete(special_rooms_type, 0);
}
if(player_has_item(278)) rt = 1;
if(global.Modo_Sub_Juego == "Daily") rt = 1;
var f = false;
while(!f) {
    ds_list_shuffle(bl);
    var mm = bl[| 0];
    if(Dungeon[mm[? "i"],mm[? "j"]]==0) {
        Dungeon[mm[? "i"],mm[? "j"]]=rt;
        f = true;
        ds_map_destroy(mm);
        ds_list_delete(bl,ds_list_find_index(bl, mm));
    }
}

// a random room will be the shop room
var rt = choose(7,7,17);
if(player_has_item(278)) rt = 1;
var f = false;
while(!f) {
    ds_list_shuffle(bl);
    var mm = bl[| 0];
    if(Dungeon[mm[? "i"],mm[? "j"]]==0) {
        Dungeon[mm[? "i"],mm[? "j"]]=rt;
        if(global.GodShopCanSpawn) and (global.Mapa_Tipo == 6) Dungeon[mm[? "i"],mm[? "j"]] = 24;
        f = true;
        ds_map_destroy(mm);
        ds_list_delete(bl,ds_list_find_index(bl, mm));
    }
}

// a random room will be the bosskey room
var f = false;
while(!f) {
    ds_list_shuffle(bl);
    var mm = bl[| 0];
    if(Dungeon[mm[? "i"],mm[? "j"]]==0) {
        Dungeon[mm[? "i"],mm[? "j"]]=22;
        f = true;
        ds_map_destroy(mm);
        ds_list_delete(bl,ds_list_find_index(bl, mm));
    }
}

// a random room will be the secret room
var f = false;
while(!f) {
    ds_list_shuffle(bl);
    var mm = bl[| 0];
    if(Dungeon[mm[? "i"],mm[? "j"]]==0) {
        Dungeon[mm[? "i"],mm[? "j"]]=21;
        f = true;
        ds_map_destroy(mm);
        ds_list_delete(bl,ds_list_find_index(bl, mm));
    }
}

// create special rooms
repeat(special_rooms) {
    var f = false;
    var t = 0;
    ds_list_shuffle(special_rooms_type);
    rt = ds_list_find_value(special_rooms_type, 0); 
    ds_list_delete(special_rooms_type, 0);
    while(!f&&t<99) {
        if(ds_list_size(bl)<=0){t = 100; continue;}
        ds_list_shuffle(bl);
        t++;
        var mm = bl[| 0];
        if(Dungeon[mm[? "i"],mm[? "j"]]==0) {
            Dungeon[mm[? "i"],mm[? "j"]]=rt;
            f = true;
            ds_map_destroy(mm);
            ds_list_delete(bl,ds_list_find_index(bl, mm));
            t = 100;
        }
    }
}
ds_list_destroy(special_rooms_type);

// make some normal rooms bigger
for(i = 0; i < Dungeon_Ancho; i++) {
    for(j = 0; j < Dungeon_Alto; j++) {
        if(Dungeon[i,j]==1) {
			if(i+1 < Dungeon_Ancho) and (i-1 > 0) and (j+1 < Dungeon_Alto) and (j-1 > 0) {
				if(chance(10)) and (global.Jugador_Pet != 90) { 
					if(Dungeon[i-1,j] != 29) and (Dungeon[i+1,j] != 29) and (Dungeon[i,j-1] != 29) and (Dungeon[i,j+1] != 29) {
						Dungeon[i,j] = 29;
					}
				}
			}
		}
	}
}

// free memory
for(i = 0; i < ds_list_size(rl); i++) {
    ds_map_destroy(rl[| i]);
}
for(i = 0; i < ds_list_size(bl); i++) {
    ds_map_destroy(bl[| i]);
}
ds_list_destroy(bl);
ds_list_destroy(rl);

/* ----- */

// Crear una lista con los enemigos posibles
var Lista_Enemigos = ds_list_create();
var Array_Enemigos = get_map(global.Mapa_Tipo, 1);
string_explode(Array_Enemigos, "|");
for(ii = 0; ii < string_count("|",Array_Enemigos); ii++) {
    if(real(level[ii]) != -1)ds_list_add(Lista_Enemigos, level[ii]);
}

// Declarar la matriz de enemigos del layout
for(i = 0; i < Dungeon_Ancho; i++) {
    for(j = 0; j < Dungeon_Alto; j++) {
        if(Dungeon[i,j] == 1) or (Dungeon[i,j] == 21)  or (Dungeon[i,j] == 29) { // Sala normal, secreta o grande
            var Cantidad_Enemigos = floor(get_map(global.Mapa_Tipo, 11)) * (1+(2*(Dungeon[i,j] == 29)));
            for(k = 0; k < Cantidad_Enemigos; k++) {
                ds_list_shuffle(Lista_Enemigos);
                var Tipo_De_Enemigo = ds_list_find_value(Lista_Enemigos, 0);
                Dungeon_Enemigos[i,j] += string(Tipo_De_Enemigo) + "|";
            }
        }
    }
}
ds_list_destroy(Lista_Enemigos);

// Change the dungeon if the player has "Small Room" or "Big Room"
for(i = 0; i < Dungeon_Ancho; i++) {
    for(j = 0; j < Dungeon_Alto; j++) {
        if(Dungeon[i,j] == 1)  and (player_has_item(315)) Dungeon[i,j] = 29;
        if(Dungeon[i,j] == 29) and (player_has_item(314)) Dungeon[i,j] = 1;
	}
}

// Declarar los tesoros
var Tesoros = ds_list_create();

    // Treasure Room
    Dungeon_Tesoro = get_random_item_from_pool("treasure");
    
    // Random Treasure Room
    Dungeon_Tesoro_Unknown = get_random_item_from_pool("treasure");
    
    // Money Shop
	if(global.Mapa_Tipo == 6) and (global.GodShopCanSpawn == true) {
	    Dungeon_Shop[0] = 1;
	    Dungeon_Shop[1] = 1;
	} else {
	    Dungeon_Shop[0] = get_random_item_from_pool("shop");
	    Dungeon_Shop[1] = get_random_item_from_pool("shop");
	}
    Dungeon_Shop[2] = 1;
    Dungeon_Shop_Price[0] = 10;
    Dungeon_Shop_Price[1] = 10;
    Dungeon_Shop_Price[2] = 10;
    
    // Health Shop
	if(global.Mapa_Tipo == 6) and (global.GodShopCanSpawn == true) {
	    Dungeon_HealthShop[0] = 1;
	    Dungeon_HealthShop[1] = 1;
	} else {
	    Dungeon_HealthShop[0] = Dungeon_Shop[0];
	    Dungeon_HealthShop[1] = Dungeon_Shop[1];
	}
    Dungeon_HealthShop[2] = 1;
    Dungeon_HealthShop_Price[0] = 1;
    Dungeon_HealthShop_Price[1] = 1;
    Dungeon_HealthShop_Price[2] = 1;

ds_list_destroy(Tesoros);

// Situar al jugador en la Dungeon
global.Posicion_i = iri; // Posicion X del jugador en la Dungeon
global.Posicion_j = irj; // Posicion Y del jugador en la Dungeon

// Si es el modo Arcade salir e ir directamente a la sala arcade
Ronda = 1;
if(global.Modo_Juego = "Arcade") {
    Ronda = 0;
    room_goto(room_Arcade);
    exit;
}

// Si es el modo Boss Rush salir e ir al modo boss rush
if(global.Modo_Juego = "BossRush") {
	room_goto(room_BossRush);
	exit;
}

// Calcular bonus que afectan a la creacion de Dungeon
alarm[1] = 5;

// Ir a la room inicial
room_goto(room_Inicial);

/* */
/*  */

// [COMMON SHOOT VARS]
// Lista de enemigos atravesados
Objetivos = ds_list_create();
targetListBased = false; // Does this type of bullet use a list to check enemy hit?
destroyable = false; // Is this bullet destroyed after hiting and common?
damageMultiplier = 1; // Damage multiplier for enemies
Immune = false;

// Networking
netid = -1;

// Efectos comunes
if(!instance_exists(obj_Jugador)) { instance_destroy(); exit; }
Homing = choose(0,0,player_has_item(52));
Windforce_Fuerza = 0;
SemiFlash = 0;
Sustain = false;
Strike  = false;
My_Fuerza = 0;
Last_Effort = false;
Check_Solid = false;
Fire = false;
GhostBullet = false;
Pierce = false;
Lazer = false;
Shurikens = false;
r298 = false;
l298 = false;
mergeDamage = 1;

// Blind Man's Buff
if(instance_exists(obj_Jugador)) {
    if(player_has_item(287)) and (obj_Jugador.Velocidad_H == 0) and (obj_Jugador.Velocidad_V == 0) {
        My_Fuerza += 1;    
    }
}

// Slow but safe
if(instance_exists(obj_Jugador)) {
    if(player_has_item(288)) {
        My_Fuerza += floor(obj_Jugador.runTime/60/60);
    }
}

// Too much gold
TooMuchGold_Damage = 0;
if(player_has_item(109) and global.Jugador_Monedas > 0) {
    TooMuchGold_Damage = 8;
    global.Jugador_Monedas--;
}
 
// Rainbow Shots
if(player_has_item(137)) or (player_has_item(227)*(irandom(5)<=1)) { 
    My_Fuerza++;
    image_blend = make_color_hsv(random(255), 255, 255);
}

// Fakir
if(player_has_item(145)) or (player_has_item(227)*(irandom(5)<=1)) { 
    sprite_index = sprBulletSword;
    image_speed = 1;
}

// Hero dagger
if(player_has_item(175)) and (obj_Jugador.HP == obj_Jugador.HP_Max) or (player_has_item(227)*(irandom(5)<=1)) {
    sprite_index = spr_Item_176;
    My_Fuerza = 2;
}

// Asura strike
if(obj_Jugador.temp_Strike = true) or (player_has_item(227)*(irandom(5)<=1)) {
    image_xscale = 6;
    image_yscale = 6;
    Strike = true;
}

// Sharpen Bonus
if(player_has_item(263)) and (obj_Jugador.Experience > 0) {
    obj_Jugador.Experience--;
    damageMultiplier *= 1.5;
}

if(obj_Jugador.Pet_Bonus_LittleSlime) if(random(100) >= 99) My_Fuerza += 10; // Little Slime
if(player_has_item(148)) My_Fuerza += obj_Jugador.HP/4; // Mind=Blown
if(player_has_item(87)) or (Lazer) or (player_has_item(227)*(irandom(5)<=1)) image_blend = c_red; // Lasers
if(player_has_item(88)) or (Shurikens) or (player_has_item(227)*(irandom(5)<=1)) sprite_index = sprBulletShuriken; // Shurikens
if(player_has_item(62)) Last_Effort = (obj_Jugador.HP <= 1); // Last Effort 
if(player_has_item(100)) or (player_has_item(227)*(irandom(5)<=1)) alarm[4] = 20; // Minishots
if(player_has_item(107)) or (player_has_item(227)*(irandom(5)<=1)) alarm[5] = 30; // The Orb
if(instance_exists(obj_Jugador_Chaos_Zone) and distance_to_object(obj_Jugador_Chaos_Zone)<64) My_Fuerza = 1; // Chaos Zone
if(!instance_exists(controlador_Movimiento) or !instance_exists(controlador_Disparo)) exit;
if(player_has_item(63)) and (controlador_Disparo.A != 0) alarm[8] = 1; // 360 grades
if(player_has_item(111)) or (player_has_item(227)*(irandom(5)<=1)) alarm[3] = 2; // Geocentric


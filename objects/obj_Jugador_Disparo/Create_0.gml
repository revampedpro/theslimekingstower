// Destroy if player doesn't exists
if(!instance_exists(obj_Jugador)) { instance_destroy(); exit; }

// Shoot fx
create_effect(x, y, sprBulletShootFx, 1);
var fx = create_effect(x, y-2, sprFxBulletMuzzy, 1);
fx.depth -= 7;

// Limit shoot number
if(instance_number(obj_Jugador_Disparo)>35) with(obj_Jugador_Disparo.id) instance_destroy();

// Especificos tipo de bala
Rebotes = 2; // Veces que rebotara la bala
Sustain_Time = 60; // Tiempo que se mantiene en el aire
Altura = 16; // Altura en la que empieza la bala
Direccion_Relativa = -1;
Delay_Antes_De_Caer = 30;
shadow_size = 4;
Angulo = 0;

// Player item
player_item_21  = player_has_item(21);
player_item_30  = player_has_item(30);
player_item_42  = player_has_item(42);
player_item_53  = player_has_item(53);
player_item_84  = player_has_item(84);
player_item_86  = player_has_item(86);
player_item_87  = player_has_item(87);
player_item_91  = player_has_item(91);
player_item_116 = player_has_item(116);
player_item_119 = player_has_item(119);
player_item_151 = player_has_item(151);
player_item_157 = player_has_item(157);
player_item_202 = player_has_item(202);
player_item_226 = player_has_item(226);
player_item_306 = player_has_item(306);
player_item_311 = player_has_item(311);
player_item_322 = player_has_item(322);
player_item_323 = player_has_item(323);
player_item_329 = player_has_item(329);
player_item_336 = player_has_item(336);

// Alarms
alarm[0] = Delay_Antes_De_Caer;
alarm[1] = 8;
alarm[2] = 1;

// Physics
H_SPEED = 0;
V_SPEED = 0;

// Inherit bullet vars
event_inherited();

// Bullet specifics
targetListBased = true;
destroyable = true;
image_xscale += r298*0.5;
image_xscale -= l298*0.5;
image_yscale = image_xscale;
if(global.characterSelected == 5)  sprite_index = sprBulletPulse;
if(global.characterSelected == 12) or (player_has_item(333)) sprite_index = sprBone;
boneAngle = 0;
mergeDamage = 1;

// Auto Aim
if(player_has_item(503)) {
    if(instance_exists(parent_Enemigo)) {
        b_ins = instance_nearest(x,y,parent_Enemigo);
        x = b_ins.x;
        y = b_ins.y;
    }
}

// Glitch Item
if(player_has_item(307)) {
	with(parent_Enemigo) {
		var spr = other.sprite_index;
		other.sprite_index = sprite_index;	
		sprite_index = spr;
	}
}
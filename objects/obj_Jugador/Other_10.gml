/// @description  Disparar Arriba
if(global.Pausado) exit;
bulletShootAnimation = true;

// Change face direction
//image_Direction = 3;

// Little ones shooting
for(cln = 0; cln < instance_number(obj_LittleMe); cln++) {
    var cln_ins = instance_find(obj_LittleMe,cln);
    if(alarm[0] < 0) {
        cln_ins.alarm[0] = 1;
        cln_ins.shootDirection = "up";
    }
}

// Clones
if(instance_exists(objPlayerClone)) {
    if(alarm[1] < 0) {
        objPlayerClone.alarm[1] = 60/(obj_Jugador.Cadencia_Disparo);
        objPlayerClone.shootDirection = "up";
    }
}

// Si tiene disparo estatico lo maneja en vez de disparar
if(Bonus_Static_Shoot == true) {
    with(obj_Jugador_Disparo_Estatico) Velocidad_V -= Aceleracion;
    bulletShootAnimation = false;
    exit;
}

// Move flesh's soul
if(global.characterSelected == 10) {
    if(instance_exists(objFleshSoul)) {
        with(objFleshSoul)  Velocidad_V -= Aceleracion;
        bulletShootAnimation = false;
        exit;
    }
}

// Spike Trail
if((player_item_348) and (alarm[0]<0)) or (player_has_pet(79) and chance(10)) {
	create_effect(x,y,sprSmokeEnemyAppear,0.35);
	var fx = create_effect(x, y, sprMagicEffect1, 0.4);
	fx.depth = -666;
	repeat(6) {
		var fx = create_effect(x, y, sprSmokeSmall, 0.4+random(2)/10);
		fx.hspeed = -2 + random(4);
		fx.vspeed = -2 + random(4);
	}
	var spike_trail = instance_create(x,y,objBossSpikeTrail);
	spike_trail.dir = 90;
	spike_trail.spd = 3;
	spike_trail.hit_enemies = true;
	var s = audio_play_sound(sndChestAppears,0,0);
	audio_sound_pitch(s,1.2);
	alarm[0] = (60/(obj_Jugador.Cadencia_Disparo+obj_Jugador.temp_Cadencia_Disparo))*2;
    bulletShootAnimation = false;
	exit;
}

// Flying Skull
if(player_item_349) and (alarm[0]<0) {
	instance_create(x,y,obj_Jugador_Disparo_Skull);
	var s = audio_play_sound(sndBombDrop,0,0);
	audio_sound_pitch(s,1.2);
	var s = audio_play_sound(snd_Disparo_Hit_01,0,0);
	audio_sound_pitch(s,2);
	alarm[0] = (60/(obj_Jugador.Cadencia_Disparo+obj_Jugador.temp_Cadencia_Disparo));
    bulletShootAnimation = false;
	exit;
}

// Electrify
if((player_item_334) and (chance(10))) or (player_has_pet(92) and chance(10)) {
	var _iid = id;
	var _cc = 1;
	with(parent_Enemigo) {
		if(distance_to_object(_iid) < 90) {
			HP -= _cc;
			var f = floating_text(x-4+random(8), y-4+random(8), _cc, make_color_rgb(40, 40, 255), true);
			f.alarm[0] = 60;
			var l = instance_create(other.x,other.y,fxMiniLazer);
			l.x2 = x;
			l.y2 = y;
			if(alarm[2]<0) alarm[2] = 6;
		}
	}
}

// Reinforcements
if(player_item_340) and (chance(5)) {
	if(instance_number(objPlayerClone) == 1)  {
	    var sk_clone = instance_create(x,y,objPlayerClone);
	    sk_clone.right = false;
	}
	if(instance_number(objPlayerClone) == 0) {
	    var sk_clone = instance_create(x,y,objPlayerClone);
	    sk_clone.right = true;
	}
}

// Dragon's Head
if(player_item_332) and (chance(8)) and (bullet_hell_bullets_total <= 0) {
	bullet_hell_bullets = 11;
	bullet_hell = 1;
	bullet_hell_direction = 3;
    bulletShootAnimation = false;
	exit;
}

// Prepare bullet hell
if(player_item_331) and (bullet_hell_bullets_total <= 0) {
	bullet_hell = 1;
	if(bullet_hell_bullets_total <= 0) bullet_hell_direction = 3;
	if(bullet_hell_bullets < 10) {
		bullet_hell_bullets += 0.25;
	} else {
		if(bullet_hell_bullets == 10) {
			flashColor = c_orange;
			alarm[2] = 4;
			audio_play_sound(sndCharge,0,0);
		}
		bullet_hell_bullets = 11; 
	}
	if(bullet_hell_bullets mod 1 == 0) and (bullet_hell_bullets < 10) {
		var s = create_effect(x-5+random(10),y,sprExperienceOrb,0.5+random(5)/10);
		s.vspeed = -(0.1+random(5)/10);
		s.image_blend = c_red;
		var m = audio_play_sound(sndCharge,0,0);
		audio_sound_pitch(m,1+bullet_hell_bullets);
	}
    bulletShootAnimation = false;
	exit;
}

// Si tiene bombas, dispara bombas en vez de disparar
if(player_item_144 and alarm[0]<0) {
    var bomb = instance_create(x, y, objBomb);
    bomb.vSpeed = -6;
    alarm[0] = 30;
    bulletShootAnimation = false;
    exit;
}

// Si tiene el dedo mueve el dedo en vez de disparar
if(player_item_500) {
    bulletShootAnimation = false;
    exit;
}

// Si tiene la hoz, ataca en vez de disparar
if(player_item_501) {
    bulletShootAnimation = false;
    exit;
}

// IF the player has bullet nova, shoot it instead of normal bullets
if(player_item_325) or (player_has_pet(87) and chance(5)) {
	alarm[0] = (60/(obj_Jugador.Cadencia_Disparo+obj_Jugador.temp_Cadencia_Disparo))*4;
	var nova = instance_create(x-3*Disparo_Move,y-10,objBulletOrb);
	nova.dir = 90;
	exit;
}

// Si tiene lasers dispara el laser en vez de disparar
if(player_item_122) {
    if((alarm[9]<0)) {
        Laser_Direction = 90;
        alarm[9] = 60;
        var lazer = bullet_spawn(x,y,0,0,90);
		lazer.Parent = id;
    }
    exit;
}

// Bonus de disparo angulado
if(player_item_12) {
    var Angulo_H = Velocidad_H;
    var Angulo_V = Velocidad_V;
} else {
    var Angulo_H = 0;
    var Angulo_V = 0;
}

// Cadencia de disparo
if(use_item_on_attack) {
    if(global.Jugador_Item_Usable != -1) and (Cargas = Cargas_Max) {
        obj_Jugador.Show_Item_ID = global.Jugador_Item_Usable;
        obj_Jugador.alarm[4] = get_skill(global.Jugador_Item_Usable,2);
        if(!instance_exists(obj_Jugador)) { exit; instance_destroy(); }
        obj_Jugador.Cargas = 0;    
        if(get_item(global.Jugador_Item_Usable,11)) obj_Jugador.Cargas = obj_Jugador.Cargas_Max;
    }
}
if(control_Dungeon.player_chan_shoot == false) exit;
if(can_attack == false) exit;
var Disparo = instance_create(x - 3*Disparo_Move + (-Bonus_100Punch/2 + random(Bonus_100Punch)), y-10, Tipo_Municion);
Disparo.V_SPEED = - Velocidad_Disparo + Angulo_V;
Disparo.H_SPEED = Angulo_H;
Disparo.image_angle = 90;
Disparo.Direccion_Relativa = 0;

// Increase rage
if(player_item_321) rage += 1;

// Crear efecto de disparo
var FX = create_effect(x - 3*Disparo_Move,y-5,sprSplatMini,0.4);
FX.image_blend = make_colour_rgb(255, 255, 128);
FX.hspeed = Velocidad_H;
FX.vspeed = Velocidad_V;

// Efectos comunes de disparo en los que no importa la direccion
scr_jugador_common_shoot(Disparo);

// Blue fire
if(player_item_330) {
	Disparo.sprite_index = sprBlueFire;
	Disparo.Pierce = 99;
	Disparo.V_SPEED *= 0.75;
	Disparo.H_SPEED *= 0.75;
	Disparo.image_angle = 90;
}

// Send bullet data to partner
if(network_is_online()) {
	
	// Assign netid to the bullet
	Disparo.netid = network_generate_id();
	
	// Prepare data
	var _x			= Disparo.x;
	var _y			= Disparo.y;
	var _hspeed		= Disparo.H_SPEED;
	var _vspeed		= Disparo.V_SPEED;
	var _angle		= Disparo.image_angle;
	var _direction	= Disparo.Direccion_Relativa;
	var _netid		= Disparo.netid;
	
	// Send shoot data
	pack_send_multi("playerShoot","x",_x,"y",_y,"hspeed",_hspeed,"vspeed",_vspeed,"angle",_angle,"direction",_direction,"ammotype",Tipo_Municion,"netid",_netid);
	
}


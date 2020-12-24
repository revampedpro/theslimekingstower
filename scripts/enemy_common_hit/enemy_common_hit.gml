/// @description Common effects when hit by an enemy
/// @param enemyid
function enemy_common_hit() {

	// Vars
	var _other = argument[0];
	var _id = _other.ID;

	// Avoid damage if you have coins
	if(player_has_item(156)) and (global.Jugador_Monedas > 0) {
	    global.Jugador_Monedas = 0;
	    alarm[3] = Delay_Invencibilidad;
	    var FX = create_effect( x, y, sprMagicShield, 1.50 );
	    FX.depth = depth-10;
	    FX.image_blend = c_yellow;
	    FX.image_xscale = 1.5;
	    FX.image_yscale = 1.5;
	    audio_play_sound(snd_RingArmor, 0, 0);
	    exit;
	}

	// Kamislime, exit
	if(real(_id) == 44) {
	    with(_other) instance_destroy();
	    exit; 
	}

	// Zombieslime, create another zombie
	if(real(_id) == 47) and (alarm[3]<0) and (instance_number(parent_Enemigo)<8) {
	    spawn(x,y,47);
	}

	// Minibombslime explode, exit
	if(real(_id) == 45) {
	    instance_create(_other.x, _other.y, objBombExplosion);
	    with(_other) instance_destroy();
	    exit; 
	}

	// Ratslime, steal
	if(real(_id) == 29) and (alarm[3]<0) and (global.Jugador_Monedas > 0) {
	    global.Jugador_Monedas--;
	    var _Moneda = instance_create(x, y, obj_Moneda);
	    _Moneda.alarm[0] = 60;
	}

	// Iceslime, paralisis
	if(real(_id) == 39) and (alarm[3]<0) {
	    paralisis = 60;
	}

	// Ratslime Bonus, generate coin
	if(Pet_Bonus_RatSlime) and (chance(25)) and (alarm[3]<0) {
	    instance_create(x, y, obj_Moneda);
	}
    
	// Spike damage
	if(Bonus_Spike_Damage > 0) {
	    _other.HP--;
	    _other.alarm[2] = 4;
	}


}

if(!instance_exists(objJefeGangslime)) { instance_destroy(); exit; }
if(!instance_exists(obj_Jugador)) { instance_destroy(); exit; }

// Damage gangslime
var c_damage = ((obj_Jugador.Fuerza + obj_Jugador.Fuerza_Temporal)*(1+player_has_item(98)))+(obj_Jugador.temp_Fuerza);
other.HP -= c_damage;
other.alarm[2] = 4;
audio_play_sound(sndBulletImpact, 0, 0);
var f = floating_text(other.x-4+random(8), other.y-4+random(8), string(round(c_damage)), make_color_rgb(255, 20, 20), true);
f.alarm[0] = 60;
instance_destroy();


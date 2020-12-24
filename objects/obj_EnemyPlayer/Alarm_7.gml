/// @description Shoot
image_speed = 0;
var Fireball = instance_create(x - 3*Disparo_Move, y - 3*Disparo_Move, obj_MageSkeleton_Fireball);
Fireball.Fuerza = Fuerza;
Fireball.sprite_index = sprBulletEnemy;
Fireball.destroy_with_solid = true;
switch(dir) {
	case 0: Fireball.Direction = 0;   Fireball.image_angle = 0;   break;	
	case 1: Fireball.Direction = 90;  Fireball.image_angle = 90;  break;	
	case 2: Fireball.Direction = 180; Fireball.image_angle = 180; break;	
	case 3: Fireball.Direction = 270; Fireball.image_angle = 270; break;	
}

// Crear efecto de disparo
var FX = create_effect(x - 3*Disparo_Move,y - 3*Disparo_Move-5,sprSplatMini,0.4);
FX.image_blend = make_colour_rgb(255, 255, 128);
Disparo_Move = -Disparo_Move;

// Sonido de disparo
var Sonido_Disparo = choose(snd_Disparo_Disparar_02,snd_Disparo_Disparar_03);
audio_stop_sound(snd_Disparo_Disparar_01);
audio_stop_sound(snd_Disparo_Disparar_02);
audio_stop_sound(snd_Disparo_Disparar_03);
audio_play_sound(Sonido_Disparo, 0, 0);
audio_sound_gain(snd_Disparo_Disparar_01,0.5,0);
audio_sound_gain(snd_Disparo_Disparar_02,0.5,0);
audio_sound_gain(snd_Disparo_Disparar_03,0.5,0);
audio_play_sound(snd_Disparo_Disparar_01, 0, 0);

// Bullet reload
bullets--;
if(bullets <= 0) {
	alarm[7] = 200;
	bullets = irandom_range(6,10);
}
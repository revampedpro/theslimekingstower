/// @description  Desaparecer
if(alarm[0] > 0) exit;
if(!instance_exists(obj_Jugador)) exit;
control_UI.alarm[0] = 10;
audio_play_sound(sndPickupGet, 0, 0);
create_effect(obj_Jugador.x, obj_Jugador.y, sprMagicEffect1, 0.5);
instance_destroy();
floating_text(obj_Jugador.x, obj_Jugador.y, lang(7508), c_orange, 2);
if(obj_Jugador.bosskey == false) obj_Jugador.bosskey = true;



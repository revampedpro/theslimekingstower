/// @description  Desaparecer
if(alarm[0] > 0) exit;
if(network_is_online() and global.NETWORK_HOST == false) exit;
control_UI.alarm[0] = 10;
audio_play_sound(sndPickupGet, 0, 0);
create_effect(other.x, other.y, sprMagicEffect1, 0.5);
instance_destroy();
floating_text(other.x, other.y, lang(7508), c_orange, 2);
if(obj_Jugador.bosskey == false) obj_Jugador.bosskey = true;



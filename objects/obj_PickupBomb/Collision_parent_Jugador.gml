/// @description  Desaparecer
if(alarm[0] > 0) exit;
if(network_is_online() and global.NETWORK_HOST == false) exit;
obj_Jugador.bombs++;
if(player_has_item(225)) obj_Jugador.keys++;
control_UI.alarm[0] = 10;
audio_play_sound(sndPickupGet, 0, 0);
create_effect(other.x, other.y, sprMagicEffect1, 0.5);
floating_text(other.x, other.y, "+1 "+lang(7502), c_blue, 2);
instance_destroy();
if(obj_Jugador.bombs > 99) obj_Jugador.bombs = 99;

// Unlock Jade
//if(obj_Jugador.keys >= 20) and (obj_Jugador.bombs >= 20) and (!check_character_unlocked(1,0)) unlock_character(1);


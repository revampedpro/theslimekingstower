// Vars
image_speed = 0.6;
objectives = ds_list_create();

// Smoke
repeat(8) {
    create_effect(x-24+random(48), y-24+random(48), sprSmoke, 0.3 + random(3)/10);
}

audio_stop_sound(snd_Bomb);
audio_play_sound(snd_Bomb, 0, 0);

if(player_has_pet(66)) and (chance(10)) and (instance_exists(obj_Jugador)) obj_Jugador.bombs++;

hurt_player = true;
netid = network_generate_id();

// Hurt all enemies in the room
if(player_has_item(304)) {
	with(parent_Enemigo) {
		if(object_index == objJefeBombslime)exit;
		HP -= 10*(player_has_item(261)+1);
		var f = floating_text(x-4+random(8), y-4+random(8), string(10*(player_has_item(261)+1)), make_color_rgb(255, 20, 20), true);
		f.alarm[0] = 60;
		if(HP <= 0) instance_destroy();
		alarm[2] = 4;
	}
}
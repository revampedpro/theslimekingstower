/// @description  Comandos
if(global.DEBUG_MODE = false)exit;
if(keyboard_check_pressed(ord("M"))) {
    global.Monedas_General += real(5000);
    ini_open( "save.ini" );
    ini_write_real( "S", "MG", global.Monedas_General );
    ini_close();
}
if(keyboard_check(vk_lcontrol)) {
    if(keyboard_check_pressed(ord("C"))) {
        var chest = instance_create(mouse_x,mouse_y,obj_Cofre_General);
		chest.ID = irandom(100);
		chest.locked = choose(true,false);
		chest.image_index = 0;
		exit;
    }
    if(keyboard_check_pressed(ord("E"))) {
		spawn(mouse_x,mouse_y,get_integer("Spawn enemy id",""));
	}
	if(keyboard_check_pressed(ord("N"))) dungeon_goto_level(get_integer("Map Level",""),1);
	if(keyboard_check_pressed(ord("Q"))) {
	    if(global.Language == 0) global.Language = 1;  else global.Language = 0; 
	}
	if(keyboard_check_pressed(ord("R"))) game_restart();
	if(keyboard_check_pressed(ord("B"))) {
	    control_Dungeon.Dungeon_Boss = get_integer("boss id","");
	}
	if(keyboard_check_pressed(ord("T"))) { file_delete("save.ini"); game_restart(); }
}
if(keyboard_check_pressed(ord("N"))) dungeon_next_level();


if(keyboard_check_pressed(ord("I"))) {
    var ID = get_integer("Introduce la ID del item","");
    player_get_item(ID,true);
}
if(keyboard_check_pressed(ord("L"))) {
	global.DEBUG_MAP = get_integer("Introduce el ID del mapa","");
	room_goto(room_Normal);
}
if(keyboard_check_pressed(ord("C"))) { obj_Jugador.Cargas = obj_Jugador.Cargas_Max; }



if(keyboard_check_pressed(ord("G"))) {
    unlock_character(1);
    unlock_character(2);
    unlock_character(3);
    unlock_character(4);
    unlock_character(5);
    unlock_character(6);
    unlock_character(7);
    unlock_character(8);
    unlock_character(9);
    unlock_character(10);
    unlock_character(11);
    unlock_character(12);
    unlock_character(13);
    ini_open("save.ini");
    for(i = 0; i < 14; i++) {
        ini_write_real("SC"+string(i), "1", true);
        ini_write_real("SC"+string(i), "2", true);
        ini_write_real("SC"+string(i), "3", true);
        ini_write_real("SC"+string(i), "4", true);
        ini_write_real("SC"+string(i), "5", true);
        ini_write_real("SC"+string(i), "0", true);
    }
    ini_close();
    complete_challenge(0); complete_challenge(1); complete_challenge(2); complete_challenge(3);
    complete_challenge(5); complete_challenge(6); complete_challenge(7); complete_challenge(8); complete_challenge(9);
    complete_challenge(10);complete_challenge(11);complete_challenge(12);complete_challenge(13);complete_challenge(14);
    complete_challenge(15);complete_challenge(16);complete_challenge(17);complete_challenge(18);complete_challenge(19);
    repeat(10) player_get_item(20);
    repeat(10) player_get_item(23);
    repeat(5)  player_get_item(4);
    repeat(10) player_get_item(0);
    repeat(50) player_get_item(1);
    player_get_item(6);
    player_get_item(21);
    player_get_item(35);
    player_get_item(149);
    player_get_item(202);
    player_get_item(255);
}


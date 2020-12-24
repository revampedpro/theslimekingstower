// Dibujar letras de versus
draw_set_font( fontTransition );
draw_set_color( c_white );
draw_set_halign(fa_middle);
draw_text( room_width/2, 60, string_hash_to_newline(get_character(global.characterSelected,"name") + " VS " + string( get_boss(control_Dungeon.Dungeon_Boss,2)) ) );


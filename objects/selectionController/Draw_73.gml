// Draw title
draw_set_font(fontCharacterTitle);
draw_set_halign(fa_middle);
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_text(4+(room_width/2),4+80,string_hash_to_newline(lang(6501)));
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(room_width/2,80,string_hash_to_newline(lang(6501)));


if(alarm[1] > 0) {
    draw_set_font(fontCharacterName);
    draw_set_halign(fa_middle);
    draw_set_valign(fa_center);
    draw_set_color(c_white);
    draw_text(room_width/2, 330, string_hash_to_newline("TAP AGAIN TO SKIP"));
}


// Draw
draw_set_font(fontCharacterName);
draw_set_halign(fa_left);

if(loaded) {
    if(done == false) { draw_text_outline_color(x, y+4, lang4003, c_white); }
    if(done == true)  { draw_text_outline_color(x, y+4, lang4004, c_lime); }
    
    // Draw items
    if(items_loaded == false) {
        string_explode(items, "|")
        for(i = 0; i < string_count("|", items); i++) {   
            dailyItem[i] = get_item(real(level[i]), 3);
        }
        dailyCount = string_count("|", items);
        items_loaded = true;
    }
    for(i = 0; i < dailyCount; i++) {
        draw_sprite_ext(dailyItem[i], -1, 52 + 26*i, 254, 1.5, 1.5, 0, c_white, 1);
    }
} else {
    draw_text_outline_color(x, y+4, "Loading daily run...", c_white);
}


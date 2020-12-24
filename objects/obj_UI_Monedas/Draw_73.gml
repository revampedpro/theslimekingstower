// Dibujarse
draw_self();

// Dibujar monedas
draw_set_font(font_SmallHitBox_Small);
draw_set_halign(fa_right);
draw_set_valign(fa_center);
draw_text_outline(x + 18 + sprite_width/2, y - 1 + sprite_height/2, string_comma(string(global.Monedas_General)));
draw_set_halign(fa_left);
draw_set_valign(fa_top);


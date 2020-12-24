/*
// Dibujar noticias
//draw_set_halign(fa_left);
//draw_set_font(font_UI4);
//draw_text_outline_color(x, y-20, lang(92), c_orange);
draw_set_halign(fa_left);
//draw_set_halign(fa_middle);

// Noticia 1
if(Loaded == true) {

    // Variables
    Noticia1_Header = string(level[0]);
    Noticia1_Body   = string(level[1]);
    Noticia1_URL    = string(level[2]);
    Noticia2_Header = string(level[3]);
    Noticia2_Body   = string(level[4]);
    Noticia2_URL    = string(level[5]);
    
    draw_set_font(fontCharacterTitle);
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_text(x-20+2, y+2, string_upper("!"));
    draw_set_color(c_yellow);
    draw_set_alpha(1);
    draw_text(x-20, y, string_upper("!"));
    
    draw_set_font(fontCharacterDescription);
    draw_text_transformed(x-26, y+22, string_upper("NEW"),1,1,90);

    draw_set_font(fontCharacterName);
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_text(x+2, y+2, string_upper(Noticia1_Header));
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_text(x, y, string_upper(Noticia1_Header));
    draw_set_font(font_News);
    draw_set_color(c_white);
    draw_text_ext(x, y+12, Noticia1_Body, string_height("ABC"), 300);
    
    // Interact
    var N1X1 = x-150;
    var N1X2 = x-150+300;
    var N1Y1 = y+16;
    var N1Y2 = y+16+string_height_ext(Noticia1_Body, string_height("ABC"), 300);
    if(mouse_x > N1X1 and mouse_x < N1X2 and mouse_y > N1Y1 and mouse_y < N1Y2 and mouse_check_button_pressed(mb_left)) url_open(Noticia1_URL);
    
    // Noticia 2
    //draw_set_font(font_UI);
    //draw_text_outline_color(x, y+16+string_height_ext(Noticia1_Body, string_height("ABC"), 300), Noticia2_Header, c_yellow);
    //draw_set_font(font_News);
    //draw_set_color(c_white);
    //draw_text_ext(x, y+32+string_height_ext(Noticia1_Body, string_height("ABC"), 300), Noticia2_Body, string_height("ABC"), 300);
    
    // Interact
    //var N1X1 = x;
    //var N1X2 = x+300;
    //var N1Y1 = y+32+string_height_ext(Noticia1_Body, string_height("ABC"), 300);
    //var N1Y2 = y+32+string_height_ext(Noticia1_Body, string_height("ABC"), 300)+string_height_ext(Noticia2_Body, string_height("ABC"), 300);
    //if(mouse_x > N1X1 and mouse_x < N1X2 and mouse_y > N1Y1 and mouse_y < N1Y2 and mouse_check_button_pressed(mb_left)) url_open(Noticia2_URL);
    
} else {

    draw_set_font(font_UI);
    draw_text_outline_color(x, y, lang(93), c_yellow);

}

/* */
/*  */

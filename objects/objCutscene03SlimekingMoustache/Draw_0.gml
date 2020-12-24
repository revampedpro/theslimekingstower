// Draw text
draw_self();
draw_set_font(fontCutscene);
if(floor(image_index) == 0) {
    draw_set_color(c_black);
    draw_set_alpha(.5);
    draw_text(x+130+2,y-20+2,string_hash_to_newline("NO MOUSTACHE"));
    draw_arrow(x+100+2,y-10+2,x+50+2,y+2,20);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_text(x+130,y-20,string_hash_to_newline("NO MOUSTACHE"));
    draw_arrow(x+100,y-10,x+50,y,20);
}


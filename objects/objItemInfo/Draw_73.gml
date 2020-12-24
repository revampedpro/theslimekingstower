// Info
var vx = x;
var vy = y - 24;
draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(vx-75,vy-35,vx+75,vy+70,0);
draw_set_alpha(1);

draw_set_halign(fa_middle);
draw_set_valign(fa_top);
draw_set_font(font_Gold);
if(icon != -1) {
    draw_sprite(icon, 0, vx, vy - 16);
    draw_text_outline_soft_ext(vx, vy + 16 - 16, name, 1, c_red);
    draw_text_outline_soft_ext_ext(vx, vy + 16 - 6, description, 1, c_white, 120);
}


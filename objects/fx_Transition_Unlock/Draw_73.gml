// Draw Black
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, 0);

// Draw text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fontUnlock);
draw_set_color(c_white);
draw_text(room_width/2, room_height/2, string_hash_to_newline(texto));

var a2 = clamp(a, 0, 1);
a += 0.005;
draw_set_alpha(a2);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, 0);
draw_set_alpha(1);
if(a >= 1) room_goto(room_GameOver);


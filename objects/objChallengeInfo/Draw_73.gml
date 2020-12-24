// Draw set
if(global.characterSelected == -1) exit;

// Set and vars
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw description/unlock
unlocked = true;
var thename = string_upper(get_challenge(global.characterSelected,"name"));

// Draw name
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_color(c_orange);
draw_set_font(fontCharacterItem);
draw_set_color(c_black);
draw_set_alpha(0.77);
draw_text(312+2, 20+270+2, string_hash_to_newline(thename));
draw_set_color(c_aqua);
if(check_challenge_unlocked(global.characterSelected) == true) draw_set_color(c_lime);
draw_set_alpha(1);
draw_text(312, 20+270, string_hash_to_newline(thename));

draw_set_font(fontCharacterDescription8);
if(unlocked)  {
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
    draw_set_color(c_black);
    draw_set_alpha(0.77);
    draw_text_ext(room_width/2 + 2, 20+y-0+8+2+string_height(string_hash_to_newline("ABC")), string_hash_to_newline(string_upper(get_challenge(global.characterSelected,"description"))), string_height(string_hash_to_newline("ABC")),350);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_text_ext(room_width/2, 20+y-0+8+string_height(string_hash_to_newline("ABC")), string_hash_to_newline(string_upper(get_challenge(global.characterSelected,"description"))), string_height(string_hash_to_newline("ABC")),350);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);


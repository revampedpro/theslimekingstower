// Draw set
if(global.characterSelected == -1) exit;

// Set and vars
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw description/unlock
unlocked = false;
with(objCharacterSelect) {
    if(playerID == global.characterSelected) and (unlocked) other.unlocked = true;
}
var thename = string_upper(get_character(global.characterSelected,"name"));
if(!unlocked) thename = "???";

// Draw name
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
draw_set_color(c_orange);
draw_set_font(fontCharacterItem);
draw_set_color(c_black);
draw_set_alpha(0.9);
draw_text(312+2, 240+2, string_hash_to_newline(thename));
draw_set_color(c_orange);
draw_set_alpha(1);
if(!unlocked) draw_set_color(c_red);
draw_text(312, 240, string_hash_to_newline(thename));
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(fontCharacterDescription8);
if(unlocked)  {
    draw_set_color(c_black);
    draw_set_alpha(0.77);
    draw_text_ext(x+30+150+2, y-12+8+2+string_height(string_hash_to_newline("ABC")), string_hash_to_newline(string_upper(get_character(global.characterSelected,"description"))), string_height(string_hash_to_newline("ABC")),170);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_text_ext(x+30+150, y-12+8+string_height(string_hash_to_newline("ABC")), string_hash_to_newline(string_upper(get_character(global.characterSelected,"description"))), string_height(string_hash_to_newline("ABC")),170);
}
if(!unlocked) {
    draw_set_color(c_black);
    draw_set_alpha(0.77);
    draw_text_ext(x+30+2+150, y+2-12+8+string_height(string_hash_to_newline("ABC")), string_hash_to_newline(string_upper(get_character(global.characterSelected,"unlock"))), string_height(string_hash_to_newline("ABC"))+2,170);
    draw_set_color(c_gray); 
    draw_set_alpha(1);
    draw_text_ext(x+30+150, y-12+8+string_height(string_hash_to_newline("ABC")), string_hash_to_newline(string_upper(get_character(global.characterSelected,"unlock"))), string_height(string_hash_to_newline("ABC"))+2,170);
}

// Get items
var item_a = -1;
var item_b = -1;
var char_items = get_character(global.characterSelected);
if(char_items != -1) {
    item_a = ds_list_find_value(char_items,0);
    if(ds_list_size(char_items) > 1) item_b = ds_list_find_value(char_items,1);
    ds_list_destroy(char_items);
}

// Starting item
if(item_a != -1 and unlocked) draw_sprite_ext(spr_UI_Item,        1, x+30-8+30,    y-10,2,2,0,-1,1);
if(item_a == -1 or !unlocked) draw_sprite_ext(spr_UI_Item,        1, x+30-8+30,    y-10,2,2,0,-1,0.5);
if(item_a != -1 and unlocked) draw_sprite_ext(get_item(item_a,3), 1, x+30-8+30+30, y-10+30,2,2,0,-1,1);
																	  
if(item_b != -1 and unlocked) draw_sprite_ext(spr_UI_Item,        1, x+30-8+90,    y-10,2,2,0,-1,1);
if(item_b == -1 or !unlocked) draw_sprite_ext(spr_UI_Item,        1, x+30-8+90,    y-10,2,2,0,-1,0.5);
if(item_b != -1 and unlocked) draw_sprite_ext(get_item(item_b,3), 1, x+30-8+90+30, y-10+30,2,2,0,-1,1);

// Progress icons
draw_sprite(sprAdventureProgressIcons, 1 - (unlocked  == true), x+50 - 30*3, y-10);
draw_sprite(sprAdventureProgressIcons, 3 - (slimeking == true), x+50 - 30*2, y-10);
draw_sprite(sprAdventureProgressIcons, 5 - (basement  == true), x+50 - 30*3, y+30-10);
draw_sprite(sprAdventureProgressIcons, 7 - (portal    == true), x+50 - 30*2, y+30-10);
draw_sprite(sprAdventureProgressIcons, 9 - (skeleton  == true), x+50 - 30*1, y-10);
draw_sprite(sprAdventureProgressIcons, 11- (mimic     == true), x+50 - 30*1, y+30-10);


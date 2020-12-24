// Next page icon
var iX = 15 - (62*6*3) + 62*24;
var iY = 90 + 62*3;
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(font_SmallHitBox_Smaller);
draw_sprite_ext(spr_Boton_Ingame, 0, iX, iY, 0.9, 0.9, 0, -1, 1);
draw_text_outline_soft(iX, iY, lang7031);

gamepad_button = false;
for(i = 0; i < gamepad_get_device_count(); i++) {
    if(gamepad_is_connected(i)) {
        if(gp_any_pressed(i)) {
            if(gamepad_button_check_pressed(i, global.GP_SHOOT_DOWN)) {
                gamepad_button = true;
            }
        }
    }
}

// Next page
if(device_mouse_x_to_gui(0) > iX - 24 and device_mouse_x_to_gui(0) < iX + 24) and (device_mouse_y_to_gui(0) > iY - 24 and device_mouse_y_to_gui(0) < iY + 24) {
    if(mouse_check_button_pressed(mb_left) or gamepad_button) {
    
        // Change page
        current_page++;
        if(current_page > max_page) current_page = 0;
    
        // Reset icons & names & optimization
        Selected = -1;
        dsListSize = -1;
        selectedName = "";
        selectedDesc = "";
        for(i = 0; i < 30; i++) {
            itemID[i] = -2;
            itemIcon[i] = -2;
        }
        
    }
}

// Draw items
var j = 0;
var IT = 0;
if(dsListSize == -1) dsListSize = ds_list_size(pItems) - items_per_page*current_page;
for(i = 1; i <= min(items_per_page, dsListSize); i++) {
    if(itemID[i] == -2) {
        itemID[i] = ds_list_find_value(pItems, i-1 + items_per_page*current_page);
    }
    var ID = itemID[i];
    var iX = 15 - (62*6*j) + 62*i;
    var iY = 90 + 62*j;
    draw_sprite_ext(spr_Boton_Ingame, 0, iX, iY, 0.9, 0.9, 0, -1, 1);
    if(itemIcon[IT] == -2) {
        itemIcon[IT] = get_item(ID,3);
    }
    if(itemIcon[IT] != -1) draw_sprite_ext(itemIcon[IT], 0, iX, iY, 1.5, 1.5, 0, -1, 1);
    
    if(Selected == i) {
        draw_set_color(c_white);
        draw_circle(iX, iY, 23, 1);
    }
    
    if(i == 6) j++;
    if(i == 12) j++;
    if(i == 18) j++;
    
    // Highlight
    if(device_mouse_x_to_gui(0) > iX - 24 and device_mouse_x_to_gui(0) < iX + 24) and (device_mouse_y_to_gui(0) > iY - 24 and device_mouse_y_to_gui(0) < iY + 24) {
        if(mouse_check_button_pressed(mb_left) or gamepad_button) {
            Selected = i;
            selectedName = get_item(ID,2);
            selectedDesc = get_item(ID,8);
        }
    }
    
    IT++;
    
}

// Draw drop
if(!global.Modo_Challenge_Activo) and (!network_is_online()) draw_sprite_ext(spr_Boton_Ingame_Large, 0, 445, 214+00, 0.9, 0.9, 0, -1, 1);
draw_sprite_ext(spr_Boton_Ingame_Large, 0, 445, 210+66, 0.9, 0.9, 0, -1, 1);

var DropText = lang95;
var ExitText = lang36;

draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(font_SmallHitBox_Small);
draw_set_alpha(1);

if(Selected == -1) draw_set_alpha(0.5);
if(!global.Modo_Challenge_Activo) and (!network_is_online()) draw_text_outline_soft(445, 214+00, DropText);
draw_set_alpha(1);
draw_text_outline_soft(445, 210+66, ExitText);

// Draw item description
if(Selected != -1) {

    var ID = ds_list_find_value(pItems, Selected-1);
    draw_set_font(font_GoldDouble);
    draw_set_color(c_orange);
    draw_set_valign(fa_bottom);
    draw_text_ext(425,70,string_hash_to_newline(selectedName),string_height(string_hash_to_newline("ABC")),200);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_text_ext(425,72,string_hash_to_newline(selectedDesc),string_height(string_hash_to_newline("ABC")),200);

}

// Drop menu
if(!global.Modo_Challenge_Activo) and (!network_is_online()) {
    if(device_mouse_x_to_gui(0) > 445 - 12 and device_mouse_x_to_gui(0) < 445 + 192) and (device_mouse_y_to_gui(0) > 214+00 - 24 and device_mouse_y_to_gui(0) < 214+00 + 24) {
        if(mouse_check_button_pressed(mb_left) or gamepad_button) and (Selected != -1) {
            var ID = ds_list_find_value(pItems, items_per_page*current_page + Selected-1);
            ds_list_clear(pItems);
            with(obj_Jugador) player_lose_item(ID);
            for(k = 0; k < array_length_1d(control_Dungeon.Jugador_Items); k++) {
                if(control_Dungeon.Jugador_Items[k] != 0) ds_list_add(pItems, control_Dungeon.Jugador_Items[k]);
            }
            Selected = -1;
            // Reset itemIcons 
            for(i = 0; i < 30; i++) {
                itemID[i] = -2;
                itemIcon[i] = -2;
            }
            dsListSize = -1;
        }
    }
}

// Exit menu
if(device_mouse_x_to_gui(0) > 445 - 12 and device_mouse_x_to_gui(0) < 445 + 192) and (device_mouse_y_to_gui(0) > 210+66 - 24 and device_mouse_y_to_gui(0) < 210+66 + 24) and (alarm[0]<0) {
    if(mouse_check_button_pressed(mb_left) or gamepad_button) {
        global.Pausado = false;
        draw_set_valign(fa_top);
        instance_destroy();
        exit;
    }
}

draw_set_halign(fa_middle);
if(ds_list_size(pItems) == 0) draw_text_outline_soft(250, 200, lang96);
draw_set_valign(fa_center);
draw_set_valign(fa_top);


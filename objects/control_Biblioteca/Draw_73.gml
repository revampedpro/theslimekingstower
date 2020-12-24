/// @description  Dibujar biblioteca

// Descripcion
var Item_Color = c_white;
if(Item != ItemT) {
    Texto = get_item(Item,2);
    Descripcion = string_upper(get_item(Item,8));
    Item_Icono = get_item(Item,3);
    ItemT = Item;
}
if(real(level[Item]) <= 0) Item_Color = c_black;
draw_sprite_ext(Item_Icono, -1, 92, 78, 4, 4, 0, Item_Color, 1);
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect(150, 20, 620, 128, 0);
draw_set_alpha(1);

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

if(real(level[Item]) <= 0) Texto = "???";
if(real(level[Item]) <= 0) Descripcion = "";
draw_set_font(fontCharacterItem);
draw_text_outline(170, 47, string_upper(Texto));
draw_set_font(fontCharacterName);

var TX = 170;
var TY = 72;
draw_set_color(c_black);
for( o = 0; o < 3; o++ ) {
    draw_text_ext( TX+o, TY+o, string_hash_to_newline(Descripcion), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX+o, TY-o, string_hash_to_newline(Descripcion), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX-o, TY+o, string_hash_to_newline(Descripcion), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX-o, TY-o, string_hash_to_newline(Descripcion), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX+o, TY  , string_hash_to_newline(Descripcion), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX-o, TY  , string_hash_to_newline(Descripcion), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX, TY+o  , string_hash_to_newline(Descripcion), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX, TY-o  , string_hash_to_newline(Descripcion), string_height(string_hash_to_newline("ABC")), 350 );
}
draw_set_color(c_white);
draw_text_ext( TX, TY, string_hash_to_newline(Descripcion), string_height(string_hash_to_newline("ABC")), 350 );

// Items
var j = 0;
var X = 36;
var Y = 204;
var S = 64;
var im = 0;
for(ii = 0; ii < 16; ii++) {
    if(ii+(16*Pagina) < count_items()) { 
        if(ii >= 8) j = 1;
        var Boton_Sprite = spr_Boton_Biblioteca;
        var Boton_Index = 0;
        
        if(PagT != Pagina) {
            ItemIconoMini[im] = get_item(ii+(16*Pagina),3);
        }
        
        var Icono_Sprite = ItemIconoMini[im];
        var Icono_Color = c_white;
        if(real(level[ii+(16*Pagina)])<=0) Icono_Color = c_black;
        
        if(ii+(16*Pagina) == Item) Boton_Index = 1;
        draw_sprite_ext(Boton_Sprite, Boton_Index, X +0 + (S*(ii-(8*j))), Y +0 + S*j, 1, 1, 0, c_white, 1);
        draw_sprite_ext(Icono_Sprite, -1, X + (S*(ii-(8*j))) + 30, Y + S*j + 30, 2, 2, 0, Icono_Color, 1);
        var MX = X+(S*(ii-(8*j)))+30;
        var MY = Y+76*j+30;
        if(mouse_check_button_pressed(mb_left)) or (gamepad_button) {
            if(mouse_x < MX+30 and mouse_x > MX-30 and mouse_y < MY+30 and mouse_y > MY-30) {
                Item = ii+(16*Pagina);
            }
        }
    } else { 
        if(ii >= 8) j = 1;
        draw_sprite_ext(spr_Boton_Biblioteca, 0, X +0 + (S*(ii-(8*j))), Y +0 + 60*j, 1, 1, 0, c_black, 0.4);
    }
    im++;
}
PagT = Pagina;

// Dibujar pagina
draw_set_halign(fa_middle);
draw_set_valign(fa_center);

var Items_Desbloqueados = 0;
for( t = 0; t < array_length_1d(level); t++ ) { Items_Desbloqueados += (real(level[t])>0); }
draw_sprite_ext(spr_Boton_Biblioteca,   0, 2+578-32,  38+2+44-32, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_Cofre_BlackOutline, 0, 580+14-16, 38+30+14, 1.75, 1.75, 0, c_white, 1);

draw_set_font(font_SmallHitBox_Smaller);
draw_text_outline(580+14-16, 38+8+14, lang15);
draw_text_outline(580+14-16, 38+8+26, lang16);
draw_set_font(font_SmallHitBox_Smaller);
draw_text_outline(580+14-16, 38+44+14, string(Items_Desbloqueados) + "/" + string(count_items()));

draw_set_font(fontCharacterName);
obj_Biblioteca_Nuevo_Pagina.menu_text = pagText +"#"+ string(Pagina+1) + "/" + string(floor(count_items()/16)+1); 

draw_set_halign(fa_left);
draw_set_valign(fa_top);





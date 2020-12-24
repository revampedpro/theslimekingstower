/// @description  Dibujar biblioteca
mini = 1;
if(Item != ItemT) {
    Texto = get_pet(Item, 0)
    Descripcion = string_upper(get_pet(Item, 2));
    Item_Icono = get_pet(Item,1);
    mini = get_pet(Item,7);
    ItemT = Item;
}

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

// Descripcion
image_speed = 0.25;
var Item_Color = c_white;
if(real(level[Item]) <= 0) Item_Color = c_black;
draw_sprite_ext(Item_Icono, -1, 76, 90 /*+ 20*mini*/, 4 - 1*mini, 4 - 1*mini, 0, Item_Color, 1);
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect(150, 20, 620, 140, 0);
draw_set_alpha(1);

var lvlText =  + " (lvl " + string(real(level[Item])) + ")";

if(real(level[Item]) <= 0) Texto = "???";
if(real(level[Item]) <= 4) Descripcion = "???";
draw_set_font(fontCharacterItem);
draw_text_outline(170, 47, string_upper(Texto));
if(real(level[Item])>0 and real(level[Item])<5) draw_text_outline_color(140, 70, string_upper(lvlText), c_lime);
if(real(level[Item])==5) draw_text_outline_color(140, 70, string_upper(lvlText), c_red);
draw_set_font(font_Ranking);
draw_set_font(fontCharacterName);

var TX = 170;
var TY = 93;
draw_set_color(c_black);
for( o = 0; o < 3; o++ ) {
    draw_text_ext( TX+o, TY+o, string_hash_to_newline(lang3006), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX+o, TY-o, string_hash_to_newline(lang3006), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX-o, TY+o, string_hash_to_newline(lang3006), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX-o, TY-o, string_hash_to_newline(lang3006), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX+o, TY  , string_hash_to_newline(lang3006), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX-o, TY  , string_hash_to_newline(lang3006), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX, TY+o  , string_hash_to_newline(lang3006), string_height(string_hash_to_newline("ABC")), 350 );
    draw_text_ext( TX, TY-o  , string_hash_to_newline(lang3006), string_height(string_hash_to_newline("ABC")), 350 );
}
draw_set_color(c_white);
draw_text_ext( TX, TY, string_hash_to_newline(lang3006), string_height(string_hash_to_newline("ABC")), 350 );

var TY = 110;
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
draw_set_color(c_orange);
draw_text_ext( TX, TY, string_hash_to_newline(Descripcion), string_height(string_hash_to_newline("ABC")), 350 );

// Items
var j = 0;
var X = 36;
var Y = 204;
var S = 64;
var im = 0;
for(ii = 0; ii < 16; ii++) {
    if(ii+(16*Pagina) < count_pets()) { 
        if(ii >= 8) j = 1;
        var Boton_Sprite = spr_Boton_Biblioteca;
        var Boton_Index = 0;
        
        
        if(PagT != Pagina) {
            ItemIconoMini[im] = get_pet(ii+(16*Pagina), 1);
        }
        var Icono_Sprite = ItemIconoMini[im]
        
        
        var Icono_Color = c_white;
        //var mini = get_pet(ii+(16*Pagina), 7);
        
        if(real(level[ii+(16*Pagina)]) <=0) Icono_Color = c_black;
        
        if(ii+(16*Pagina) = Item) Boton_Index = 1;
        if(global.Jugador_Pet == ii+(16*Pagina)) Boton_Index = 3;
        draw_sprite_ext(Boton_Sprite, Boton_Index, X + (S*(ii-(8*j))), Y + S*j, 1, 1, 0, c_white, 1);
        draw_sprite_ext(Icono_Sprite, -1, X + (S*(ii-(8*j))) + 30, Y + S*j + 30, 2 - 0.5*mini, 2 - 0.5*mini, 0, Icono_Color, 1);
        var MX = X+(S*(ii-(8*j)))+30;
        var MY = Y+76*j+30;
        if(mouse_check_button_pressed(mb_left)) or (gamepad_button) {
            if(mouse_x < MX+30 and mouse_x > MX-30 and mouse_y < MY+30 and mouse_y > MY-30) {
                if(Item == (ii+(16*Pagina)) and real(level[Item]) > 0) {
                    global.Jugador_Pet = Item;
                    ini_open("save.ini");
                    ini_write_real("S", "PPT", global.Jugador_Pet);
                    ini_close();
                }
                Item = ii+(16*Pagina);
            }
        }
    } else { 
        if(ii >= 8) j = 1;
        draw_sprite_ext(spr_Boton_Vacio, -1, X + (S*(ii-(8*j))), Y + 60*j, 0.5, 0.5, 0, c_black, 0.4);
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
draw_text_outline(580+14-16, 38+8+14, lang3005);
draw_text_outline(580+14-16, 38+8+26, lang16);
draw_set_font(font_SmallHitBox_Smaller);
draw_text_outline(580+14-16, 38+44+14, string(Items_Desbloqueados) + "/" + string(count_pets()) );

obj_Biblioteca_Nuevo_Pagina.menu_text = pagText +"#"+ string(Pagina+1) + "/" + string(floor(count_pets()/16)+1); //draw_text_shadow(578+14-16, 234+14, string(Pagina+1) + "/" + string(floor(count_items()/16)+1),2);
//draw_text_outline( 578+14-16, 204+14, lang(17) );
//draw_text_outline( 578+14-16, 234+14, string(Pagina+1) + "/" + string(floor(count_pets()/14)+1) );
//draw_text_outline( 578+14-16, 310+14, lang(5) );
draw_set_halign(fa_left);
draw_set_valign(fa_top);




/* */
/*  */

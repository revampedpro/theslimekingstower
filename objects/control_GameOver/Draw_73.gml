/// @description  Dibuja los datos de gameover
draw_set_color(c_white);
draw_set_halign(fa_left);

// Variables temporales
if(retrieved_data == false) {
    Time     = string_upper(string(global.Tiempo_Juego));
    Level    = string_upper(string(global.Mapa_Nivel));
    Map      = string_upper(string(get_map(global.Mapa_Tipo,4)));
    Enemigos = string_upper(string(global.DEBUG_ENEMIGOS_DERROTADOS));
    Monedas  = string_upper(string(global.DEBUG_MONEDAS));
    Salud    = string_upper(string(global.DEBUG_SALUD));
    temp_Segundos = (real(Time)/60);
    temp_Horas = floor(floor(temp_Segundos) / 3600);
    if( string_length( string(temp_Horas) ) < 2 ) temp_Horas = "0" + string(floor(temp_Horas));
    temp_Minutos = floor( (temp_Segundos - (real(temp_Horas)*3600)) / 60 );
    if( string_length( string(temp_Minutos) ) < 2 ) temp_Minutos = "0" + string(floor(temp_Minutos));
    temp_Secs = floor( temp_Segundos % 60 );
    if( string_length( string(temp_Secs) ) > 2 ) temp_Secs = "0" + string(floor(temp_Secs));
    Tiempo = string((temp_Horas)) + ":" + string((temp_Minutos)) + ":" + string((temp_Secs));
    retrieved_data = true;
}

// Get rounds
if(global.ARCADE_RONDAS > 0) {
    Map = string(global.ARCADE_RONDAS);
}

// Titulo
var EX = 28;
var EY = 165;
var Sep = 18;
draw_set_font(font_SmallHitBox_Big);
draw_text_outline_width_sombra(24, 40,"GAMEOVER", 3);
draw_set_font(fontCharacterTitle);
draw_text_outline_width(EX, EY-28, lang43, 3);
draw_text_outline_width(EX, EY + 6 + (Sep*5), lang44, 3);

// Iconos
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Estadisticas
draw_set_font(fontCharacterName);
draw_text_outline_width(EX, EY + (Sep*0), lang47 + string(Tiempo), 3);
draw_text_outline_width(EX, EY + (Sep*1), lang48 + string(Enemigos), 3);
if(global.ARCADE_RONDAS == 0) draw_text_outline_width(EX, EY + (Sep*2), lang49 + string(Map + " " + Level), 3);
if(global.ARCADE_RONDAS >  0) draw_text_outline_width(EX, EY + (Sep*2), lang49 + ": " + string(Map), 3);
draw_text_outline_width(EX, EY + (Sep*3), lang50 + string(Monedas), 3);
draw_text_outline_width(EX, EY + (Sep*4), lang51 + string(Salud), 3);

// Mis objetos
//string_explode(global.Jugador_Items_Obtenidos, "|");
var W = 28;
var sub_i = 0;

// Huecos items 
for(i = 0; i < 42; i++) {
    if( i > 20 ) sub_i = 1;
    var IX = EX+6+(W*(i-0-(21*sub_i)));
    var IY = 302+W*sub_i;
    draw_sprite_ext(sprHealthKit, -1, IX, IY, 1, 1, 0, c_black, .5 );
}

// Items
var sub_i = 0;
var ll = array_length_1d(level);
var ls = string_count("|",global.Jugador_Items_Obtenidos);
for(i = 0; i < ll; i++) {
    var Item = real(level[i]);
    if(i > 21) sub_i = 1;
    if(i > 42) sub_i = 2;
    var IX = EX+6+(W*(i-1-(21*sub_i)));
    var IY = 302+W*sub_i;
    
    if(items_loaded == false) {
        if(shownItem[i] == -1) {
            if(real(Item) != -1 and i <= 42) {         
                shownItem[i] = get_item(Item, 3);
            }    
        }
    }
    if(shownItem[i] != -1) draw_sprite_ext(shownItem[i], -1, IX, IY, 1.5, 1.5, 0, c_white, 1);
    
}

items_loaded = true;


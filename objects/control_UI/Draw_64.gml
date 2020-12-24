/// @description  UI 1.4
if(!instance_exists(obj_Jugador))exit;

// Dibujar corazones
var j = 0;
var xx = 8;
var yy = 0;
for(i = 0; i < min(16, obj_Jugador.HP_Max/2); i++) {
    if( i >= 8 ) j = 1;
    //draw_sprite_ext(spr_UI_Corazon_, max(0,min(2,obj_Jugador.HP-(2*i))), 3+xx+71 + 16*(i -8*j), 3+yy+24 + 18*j, 2, 2, 0, 0, 0.3);
    draw_sprite_ext(spr_UI_Corazon_, max(0,min(2,obj_Jugador.HP-(2*i))), xx+71 + 16*(i -8*j), yy+24 + 18*j, 2, 2, 0, -1, 1);
}
// Extra hearts
for(ii = 0; ii < min(16-i, obj_Jugador.HP_Extra_S+1); ii++) {
    if(i+ii >= 8) j = 1;
    if(obj_Jugador.HP_Extra[ii] == obj_ShieldHeart) {
        //draw_sprite_ext(spr_UI_ShieldHeart, obj_Jugador.HP_Extra_Q[ii], 3+xx+71 + 16*(i+ii -8*j), 3+yy+24 + 18*j, 2, 2, 0, 0, 0.3 );
        draw_sprite_ext(spr_UI_ShieldHeart, obj_Jugador.HP_Extra_Q[ii], xx+71 + 16*(i+ii -8*j), yy+24 + 18*j, 2, 2, 0, -1, 1 );
    }
    if(obj_Jugador.HP_Extra[ii] == obj_TimeHeart)   {
        //draw_sprite_ext(spr_UI_TimeHeart, obj_Jugador.HP_Extra_Q[ii], 3+xx+71 + 16*(i+ii -8*j), 3+yy+24 + 18*j, 2, 2, 0, 0, 0.3 );
        draw_sprite_ext(spr_UI_TimeHeart, obj_Jugador.HP_Extra_Q[ii], xx+71 + 16*(i+ii -8*j), yy+24 + 18*j, 2, 2, 0, -1, 1 );
    }
    if(obj_Jugador.HP_Extra[ii] == obj_SkullHeart)  {
        //draw_sprite_ext(spr_UI_SkullHeart, obj_Jugador.HP_Extra_Q[ii], 3+xx+71 + 16*(i+ii -8*j), 3+yy+24 + 18*j, 2, 2, 0, 0, 0.3 );
        draw_sprite_ext(spr_UI_SkullHeart, obj_Jugador.HP_Extra_Q[ii], xx+71 + 16*(i+ii -8*j), yy+24 + 18*j, 2, 2, 0, -1, 1 );
    }
    if(obj_Jugador.HP_Extra[ii] == obj_GoldHeart)  {
        //draw_sprite_ext(spr_UI_GoldHeart, obj_Jugador.HP_Extra_Q[ii], 3+xx+71 + 16*(i+ii -8*j), 3+yy+24 + 18*j, 2, 2, 0, 0, 0.3 );
        draw_sprite_ext(spr_UI_GoldHeart, obj_Jugador.HP_Extra_Q[ii], xx+71 + 16*(i+ii -8*j), yy+24 + 18*j, 2, 2, 0, -1, 1 );
    }
    if(obj_Jugador.HP_Extra[ii] == obj_BatteryHeart)  {
        //draw_sprite_ext(spr_UI_BatteryHeart, obj_Jugador.HP_Extra_Q[ii], 3+xx+71 + 16*(i+ii -8*j), 3+yy+24 + 18*j, 2, 2, 0, 0, 0.3 );
        draw_sprite_ext(spr_UI_BatteryHeart, obj_Jugador.HP_Extra_Q[ii], xx+71 + 16*(i+ii -8*j), yy+24 + 18*j, 2, 2, 0, -1, 1 );
    }
}

// Lives
if(obj_Jugador.Lives >= 0) {
    draw_set_font(font_GoldDouble);
    draw_text_outline_soft(xx+77+16*((i)+ii-8*j),yy+14+(18*j),"x" + string(obj_Jugador.Lives+1));
}

// Salud alterada
if(alarm[1] > 0) {
    d3d_set_fog(true, make_colour_rgb(172, 50, 50), 0, 0);
    var j = 0;
    for(i = 0; i < min(16, obj_Jugador.HP_Max/2); i++) {
        if( i >= 8 ) j = 1;
        draw_sprite(spr_UI_Corazon_, max(0,min(2,obj_Jugador.HP-(2*i))), xx+71 + 16*(i -8*j), 24 + 18*j);
    }
    for(ii = 0; ii < min(16-i, obj_Jugador.HP_Extra_S+1); ii++) {
        if(i+ii >= 8) j = 1;
        if(obj_Jugador.HP_Extra[ii] == obj_ShieldHeart) draw_sprite(spr_UI_ShieldHeart, obj_Jugador.HP_Extra_Q[ii], xx+71 + 16*(i+ii -8*j), yy+24 + 18*j );
        if(obj_Jugador.HP_Extra[ii] == obj_TimeHeart)   draw_sprite(spr_UI_TimeHeart,   obj_Jugador.HP_Extra_Q[ii], xx+71 + 16*(i+ii -8*j), yy+24 + 18*j );
        if(obj_Jugador.HP_Extra[ii] == obj_SkullHeart)  draw_sprite(spr_UI_SkullHeart,  obj_Jugador.HP_Extra_Q[ii], xx+71 + 16*(i+ii -8*j), yy+24 + 18*j );
    }
    d3d_set_fog(false, make_colour_rgb(172, 50, 50), 0, 0);
}

// Dibujar experiencia
var xx = 15;
var yy = -0;
var ss = 29; // 172
obj_Jugador.Experience2 = tween_to(obj_Jugador.Experience2, obj_Jugador.Experience, 10);
var sw = (obj_Jugador.Experience2/obj_Jugador.ExperienceMax);
draw_set_color(c_black);
draw_rectangle(xx+20-2, yy+58-2, xx+20+ss+2, yy+61+2, 0);
draw_set_color(make_color_rgb(66, 134, 244));
draw_rectangle(xx+20, yy+58, xx+20+ss, yy+61, 0);
draw_set_color(make_color_rgb(242, 172, 60));
draw_rectangle(xx+20, yy+58, xx+20+(ss*sw), yy+61, 0);
draw_set_color(make_color_rgb(255, 255, 255));
draw_set_alpha(clamp(abs((obj_Jugador.Experience/obj_Jugador.ExperienceMax)-(obj_Jugador.Experience2/obj_Jugador.ExperienceMax))*30,0,1));
draw_rectangle(xx+20, yy+58, xx+20+(ss*sw), yy+61, 0);
draw_set_alpha(1);
draw_set_valign(fa_center);
draw_set_halign(fa_middle);
draw_set_font(font_GoldDouble);

draw_text_outline_soft(27, yy+60, string(obj_Jugador.Level));

// Dibujar monedas
if(abs(lockedsx)>0)  lockedsx  = (abs(lockedsx)-1)  * choose(1,-1);
if(abs(lockedsy)>0)  lockedsy  = (abs(lockedsy)-1)  * choose(1,-1);
if(abs(lockedbsx)>0) lockedbsx = (abs(lockedbsx)-1) * choose(1,-1);
if(abs(lockedbsy)>0) lockedbsy = (abs(lockedbsy)-1) * choose(1,-1);

var coins = string(global.Jugador_Monedas);
var keys  = string(obj_Jugador.keys);
var bombs = string(obj_Jugador.bombs);
var yy = 14;
if(string_length(coins) == 1) coins = "0" + coins;
if(string_length(keys)  == 1) keys  = "0" + keys;
if(string_length(bombs) == 1) bombs = "0" + bombs;
draw_set_valign(fa_center);
draw_set_halign(fa_left);
draw_set_font(font_GoldDouble);
//draw_sprite_ext(spr_UI_BossKey, obj_Jugador.bosskey, 3+28+lockedbsx, yy+3+68+lockedbsy, 2, 2, 0, 0, 0.3);
draw_sprite_ext(spr_UI_BossKey, obj_Jugador.bosskey, 28+lockedbsx, yy+68+lockedbsy, 2, 2, 0, -1, 1);
//draw_sprite_ext(spr_UI_nGold, 0, 20+3+28, yy+3+68, 2, 2, 0, 0, 0.3);
draw_sprite_ext(spr_UI_nGold, 0, 20+28, yy+68, 2, 2, 0, -1, 1);
    draw_text_outline_soft(20+42, yy+66, coins);
//draw_sprite_ext(spr_UI_Key, 0, 20+3+73+lockedsx, yy+3+68+lockedsy, 2, 2, 0, 0, 0.3);
draw_sprite_ext(spr_UI_Key, 0, 20+73+lockedsx, yy+68+lockedsy, 2, 2, 0, -1, 1);
    draw_text_outline_soft(20+85+lockedsx, yy+66+lockedsy, keys);
//draw_sprite_ext(spr_UI_Bombs, 1, 20+3+118, yy+3+68, 2, 2, 0, 0, 0.3);
draw_sprite_ext(spr_UI_Bombs, 1, 20+118, yy+68, 2, 2, 0, -1, 1);
    draw_text_outline_soft(20+136, yy+66, bombs);
draw_set_valign(fa_top);

// Item Usable
var Item_Usable_X = 0;
var Item_Usable_Y = -96;
draw_set_font(font_Ranking);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_sprite_ext(spr_UI_Item_Smaller, -1, 3+Item_Usable_X + 18, 3+Item_Usable_Y + 128 - 18, 2, 2, 0, 0, 0.3);
draw_sprite_ext(spr_UI_Item_Smaller, -1, Item_Usable_X + 18, Item_Usable_Y + 128 - 18, 2, 2, 0, -1, 1);

if(global.Jugador_Item_Usable != -1) { 
    if(itemUsableT != global.Jugador_Item_Usable) {
        itemUsable = get_item(global.Jugador_Item_Usable, 3);
        itemReusable = get_item(global.Jugador_Item_Usable, 11);
        itemOneUse = get_item(global.Jugador_Item_Usable, 13);
        itemUsableT = global.Jugador_Item_Usable;
    }
    draw_sprite_ext(itemUsable, -1, Item_Usable_X + 32+6, Item_Usable_Y + 144+4 - 18, 2, 2, 0, -1, 1);
    
    // Usar el objeto con la pantalla tactil
    if(instance_exists(obj_Jugador)) and (global.Pausado == false) {
        for(i = 0; i < 4; i++) {
            Device = i;
            var mx = device_mouse_x_to_gui(i);
            var my = device_mouse_y_to_gui(i);
            if(device_mouse_check_button_pressed(i,mb_left)) {
				if(mx < (Item_Usable_X + 32)+20 and mx > (Item_Usable_X + 32)-20 and my < (Item_Usable_Y + 144 - 18)+20 and my > (Item_Usable_Y + 144 - 18)-20) {
                    with(obj_Jugador) {
                        if(global.Jugador_Item_Usable != -1) and (Cargas == Cargas_Max){
                            obj_Jugador.Show_Item_ID = global.Jugador_Item_Usable;
                            obj_Jugador.alarm[4] = get_skill( global.Jugador_Item_Usable, 2 );
                            obj_Jugador.Cargas = 0;    
                            if(other.itemReusable) obj_Jugador.Cargas = obj_Jugador.Cargas_Max;
                            var mzfx = create_effect(obj_Jugador.x+7,obj_Jugador.y-22,sprFxRocketMuzzy,0.5);
                            mzfx.depth = depth-60;
                        }
                    }
                }
            }
        }
    } 
	
}

// Dibujar barra de carga del item
var CX = Item_Usable_X + 34 + 0 + 18 + 7;
var CY = Item_Usable_Y + 1 + 0 + 128 - 18;
var CS = 39;
var CP = max(0.15,(obj_Jugador.Cargas/obj_Jugador.Cargas_Max));
draw_set_color(make_color_rgb(0,0,0));
draw_set_alpha(0.3);
draw_rectangle(CX-1+0+3, CY+1+3, CX-0 + 7+3, CY-0 - 3+3 + CS, 0);
draw_set_alpha(1);
draw_set_color(make_color_rgb(0,0,0));
draw_rectangle(CX-1+0, CY+1, CX-0 + 7, CY-0 - 3 + CS, 0);
draw_set_color(make_color_rgb(50,60,57));
draw_rectangle(CX-1+2, CY+3, CX-2 + 7, CY-3 - 2 + CS, 0);
if(itemReusable != -1) and (itemReusable != false) {
    draw_set_color(make_color_rgb(217 - 134*CP, 87 + 30*CP, 99 + 156*CP));
} else if(itemOneUse != -1) and (itemOneUse != false)  {
    draw_set_color(make_color_rgb(217 - 80*CP, 87 - 38*CP, 99 + 90*CP));
} else {
    draw_set_color(make_color_rgb(217 - 111*CP, 87 + 103*CP, 99 - 51*CP));
}
draw_rectangle(CX-1+2, CY-3 - 2 + CS, CX-2 + 7, CY+3 + CS - (CS * CP), 0);


// Barra de vida del jefe
if(instance_exists(parent_Jefe)) {
	
	// Normal hp
	if(parent_Jefe.object_index != objJefeSkeletonKingCrawl) or (parent_Jefe.phase > 1) { // Don't draw the bar when The Skeleton King (Crawl) is being born
	    MB_HP = 0;
	    MB_HP_Max = 0;
	    with(parent_Jefe) {
	        other.MB_HP += HP;
	        other.MB_HP_Max += Max_HP;
	    }
		draw_boss_bar(MB_HP,MB_HP_Max);
		
		// Tell your partner to draw the bar
		if(network_is_online() and network_is_host()) {
			pack_send_multi("bossBar","hp",MB_HP,"hp_max",MB_HP_Max);	
		}
		
	}
    
}
	
// Draw boss bar for network guest
if(network_is_online() and !network_is_host()) {
	if(guest_HP != 0) and (alarm[2] > 0) {
		draw_boss_bar(guest_HP,guest_HP_Max);
	}
}

// Oscurecer pantalla
Alpha = tween_to(Alpha,0.9*global.Pausado,10);
draw_set_color(c_black);
draw_set_alpha(Alpha);
draw_rectangle(0,0,640,360,0);
draw_set_alpha(1);


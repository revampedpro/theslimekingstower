alpha = tween_to(alpha, 1, 15);
x = __view_get( e__VW.XView, 0 ) + 40;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-20;

// Draw self
draw_sprite_ext(sprite_index, 0, x-6, y, .5, .5, 0, image_blend, alpha);
index += 0.2;
if(index > 3) index = 0;

// Draw unlocked
draw_sprite_ext(spr,index,x-6,y,1,1,0,image_blend,alpha);

// Draw name
draw_set_font(font_Ranking);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_set_alpha(0.6);
draw_roundrect(x+8, y-9, x+12+(string_width(text)/2)+4 , y+7, 0);
draw_set_alpha(1);
draw_set_color(c_white);
draw_text_transformed_outline(x+12, y-1, text, 0.5, 0.5, 0, c_black, c_white,2);


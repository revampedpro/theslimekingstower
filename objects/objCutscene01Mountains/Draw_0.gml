alpha++;
if(alpha > 359) alpha = 0;
alpha2 = abs(sin(degtorad(alpha)))*.3;
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,0.2+alpha2);


s1+=2;
if(s1>359)s1=0;
v1 = abs(sin(degtorad(s1)));
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_lime,0.2*max(.5,image_alpha*v1));
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_lime,0.2*max(.5,image_alpha*v1));
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,0.2*max(.5,image_alpha*v1));
draw_set_blend_mode(bm_normal);


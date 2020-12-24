alpha += 1;
if(alpha > 359) alpha = 0;
alpha2 = clamp(abs(sin(degtorad(alpha))),0.1,0.9);
alpha3 = clamp(abs(cos(degtorad(alpha))),0.1,0.9);

draw_sprite_ext(sprite_index,1,x,y,image_xscale*2,image_yscale*2,image_angle,c_black,0.1);

draw_sprite_ext(sprite_index,0,x,y,1,1,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,0,x,y,1,1,image_angle,image_blend,1-objCutscene04Controller.time + alpha2*objCutscene04Controller.time);
draw_sprite_ext(sprite_index,2,x,y,1,1,image_angle,image_blend,1-objCutscene04Controller.time + alpha3*objCutscene04Controller.time);
draw_sprite_ext(sprite_index,1,x,y,1,1,image_angle,image_blend,1-objCutscene04Controller.time);




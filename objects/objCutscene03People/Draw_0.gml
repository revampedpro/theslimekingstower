
s1+=2*g;
s2+=3*g;
if(s1>359)s1=0;
if(s2>359)s2=0;
v1 = abs(sin(degtorad(s1)));
v2 = abs(cos(degtorad(s2)));

if(room == cutscene03_02) {
    draw_sprite_ext(sprite_index,2,x,y+v1*2,image_xscale,image_yscale,image_angle,image_blend,(1-objCutscene03Controller.time)*max(.5,image_alpha*v1));
    draw_sprite_ext(sprite_index,3,x,y+v2*2,image_xscale,image_yscale,image_angle,image_blend,(1-objCutscene03Controller.time)*max(.5,image_alpha*v2));   
}

draw_sprite_ext(sprite_index,img1,x,y+v1*2,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,img2,x,y+v2*2,image_xscale,image_yscale,image_angle,image_blend,image_alpha);


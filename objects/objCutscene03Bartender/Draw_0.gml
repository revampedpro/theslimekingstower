
s1+=2;
if(s1>359)s1=0;
v1 = abs(sin(degtorad(s1)));
if(room == cutscene03_02) {
    draw_sprite_ext(sprite_index,3,x,y+v1*2,image_xscale,image_yscale,image_angle,image_blend,(1-objCutscene03Controller.time)*max(.5,image_alpha*v1));
}

draw_self();    



s1+=5;
if(s1>359)s1=0;
v1 = abs(sin(degtorad(s1)));
v2 = abs(cos(degtorad(s1)));

// Draw self
draw_sprite_ext(sprite_index,0+(3*objCutscene02Controller.flashy),x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
if(audio_is_playing(sndCutsceneSuperMoustache)) {
    var x1 = x-random(2)+random(4);
    var y1 = y-random(2)+random(4);
    draw_sprite_ext(sprite_index,1,x1,y1,image_xscale,image_yscale,image_angle,image_blend,max(0.6,image_alpha*v1));
    draw_sprite_ext(sprite_index,2,x1,y1,image_xscale,image_yscale,image_angle,image_blend,clamp(objCutscene02Controller.flashy+image_alpha*v2,0,1));
} else {
    draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,max(0.6,image_alpha*v1));
    draw_sprite_ext(sprite_index,2,x,y,image_xscale,image_yscale,image_angle,image_blend,clamp(objCutscene02Controller.flashy+image_alpha*v2,0,1));
}


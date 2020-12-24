var x2 = -50+x+shakeX;
var y2 = 130+y+shakeY;
draw_sprite_pos(sprite_index,image_index,x2+250,y2-20,x2+400,y2-10,x2+200,y2+200,x2+50,y2+200,0.1*objCutscene01Controller.time);
draw_sprite_ext(sprite_index,image_index,x+shakeX,y+shakeY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
if(lazer == false) and (alarm[0]>0) {
    if(!s1) audio_play_sound(sndTowerCharge,0,0); 
    s1 = true;
    prelazer+=.5;
    draw_set_alpha(0.2);
    draw_set_blend_mode(bm_add);
    draw_set_color(c_lime);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.30,0);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.28,0);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.26,0);
    draw_set_color(c_white);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.24,0);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.20,0);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.18,0);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.16,0);
    if(alarm[0]>30) and (choose(0,0,1)) instance_create(x+90+random(60),y+80+random(60),objCutscene01Hair);
    draw_set_alpha(1);
    draw_set_blend_mode(bm_normal);
    shakeX = random(2);
    shakeY = random(2);
    shakeX2 = random(2);
    shakeY2 = random(2);
} else if(lazer == true) {
    draw_set_alpha(0.2);
    draw_set_blend_mode(bm_add);
    draw_set_color(c_lime);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.31,0);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.28,0);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.26,0);
    draw_set_color(c_white);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.24,0);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.20,0);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.17,0);
    draw_circle(x+110+shakeX2,y+100+shakeY2,prelazer*0.14,0);
    draw_set_alpha(1);
    draw_set_blend_mode(bm_normal);
    shakeX2 = random(3);
    shakeY2 = random(3);
    shakeX = random(3);
    shakeY = random(3);
    if(!audio_is_playing(sndTowerBeam)) audio_play_sound(sndTowerBeam,0,0);
}


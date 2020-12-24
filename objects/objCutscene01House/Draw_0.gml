alpha++;
if(alpha > 359) alpha = 0;
alpha2 = abs(sin(degtorad(alpha)))*.3;
r1 = -3+random(6);
r2 = -3+random(6);
if(objCutscene01Tower.lazer) {
    draw_set_blend_mode(bm_add);
    draw_set_color(c_lime);
    draw_set_alpha(0.2*objCutscene01Controller.time);
    draw_line_width(x,y,objCutscene01Tower.x+75+r1,objCutscene01Tower.y+87+r1,28*objCutscene01Controller.time);
    draw_line_width(x,y,objCutscene01Tower.x+75+r2,objCutscene01Tower.y+87+r2,24*objCutscene01Controller.time);
    draw_line_width(x,y,objCutscene01Tower.x+75+r1,objCutscene01Tower.y+87+r1,20*objCutscene01Controller.time);
    draw_set_color(c_white);
    draw_line_width(x,y,objCutscene01Tower.x+75+r2,objCutscene01Tower.y+87+r2,16*objCutscene01Controller.time);
    draw_line_width(x,y,objCutscene01Tower.x+75+r1,objCutscene01Tower.y+87+r1,12*objCutscene01Controller.time);
    draw_line_width(x,y,objCutscene01Tower.x+75+r2,objCutscene01Tower.y+87+r2,08*objCutscene01Controller.time);
    draw_line_width(x,y,objCutscene01Tower.x+75+r1,objCutscene01Tower.y+87+r1,05*objCutscene01Controller.time);
    draw_set_alpha(1);
    draw_set_blend_mode(bm_normal);
                          draw_sprite_ext(sprite_index,0,x+r1*.5,y+r1*.5,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
                          draw_sprite_ext(sprite_index,1,x+r2*.5,y+r2*.5,image_xscale,image_yscale,image_angle,image_blend,image_alpha*objCutscene01Controller.time*objCutscene01Tower.lazer);
if(room == cutscene01_02) draw_sprite_ext(sprite_index,2,x+r1*.5,y+r1*.5,image_xscale,image_yscale,image_angle,image_blend,0.2+alpha2*objCutscene01Controller.time*objCutscene01Tower.lazer);
if(choose(0,0,0,0,0,0,0,0,0,0,0,0,0,1)) and (objCutscene01Tower.lazer) and (objCutscene01Controller.time > .6)instance_create(x,y,objCutscene01Hair);
} else {
    draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}


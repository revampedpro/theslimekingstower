radius = random(8)/10 + 0.2;
radius2 = tween_to(radius2,radius,20);
radius3 = tween_to(radius3,radius2,40);
radius4 = tween_to(radius4,radius3,60);
draw_set_blend_mode(bm_add);
draw_set_alpha(0.05*objCutscene04Controller.time*radius2);
draw_circle(x,y,150*radius2,0);
draw_set_alpha(0.05*objCutscene04Controller.time*radius3);
draw_circle(x,y,120*radius2,0);
draw_set_alpha(0.05*objCutscene04Controller.time*radius4);
draw_circle(x,y,100*radius2,0);
draw_set_alpha(1);
draw_set_blend_mode(bm_normal);


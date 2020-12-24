image_alpha -= 0.0025;
if(image_alpha <= 0) instance_destroy();
move_towards_point(objCutscene01Tower.x+110,objCutscene01Tower.y+100,0.5);
image_angle += spd*5;
image_xscale = tween_to(image_xscale, 1, 11);
image_yscale = tween_to(image_yscale, 1, 11);


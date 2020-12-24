image_alpha -= 0.0025;
if(image_alpha <= 0) instance_destroy();
move_towards_point(room_width/2,room_height/2,ss2);
image_angle = direction;
image_xscale = tween_to(image_xscale, 1, 11);
image_yscale = tween_to(image_yscale, 1, 11);


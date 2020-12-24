if(instance_exists(fx_Transition_Out)) {
    image_xscale += 0.1;
    image_yscale += 0.1;
    image_alpha -= 0.025;
}
if(upper_menu_text == false) {
    menu_text = string_upper(menu_text);
    upper_menu_text = true;
}
x2 = tween_to(x2, x, 7);
y2 = tween_to(y2, y, 7);
image_xscale = 2;
image_yscale = 2;
/*
if(Seguir == true) {
    x = tween_to(x, mouse_x, 4);
    y = tween_to(y, mouse_y, 4);
}

/* */
/*  */

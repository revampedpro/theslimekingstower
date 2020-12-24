// Draw self
draw_set_blend_mode(bm_add);
image_blend = make_color_rgb(255*objCutscene04Controller.time,200*objCutscene04Controller.time,200*objCutscene04Controller.time);
draw_self();
draw_set_blend_mode(bm_normal);


/// @description  create_premultiplied_sprite(sprite)
/// @function  create_premultiplied_sprite
/// @param sprite
function create_premultiplied_sprite(argument0) {

	var w,h,s,spr1,spr2,i;

	w = sprite_get_width(argument0);
	h = sprite_get_height(argument0);
	s = surface_create(w, h);
	surface_set_target(s);
	draw_set_color(c_black);
	draw_set_alpha(1);

	for(i = 0; i<sprite_get_number(argument0); i += 1) {
    
	    draw_clear(c_black);
	    draw_set_blend_mode_ext(bm_src_alpha, bm_zero);
	    draw_sprite(argument0, i, sprite_get_xoffset(argument0), sprite_get_yoffset(argument0));
	    draw_set_blend_mode_ext(bm_one, bm_one);
	    draw_rectangle(-0.5, -0.5, w-0.5, h-0.5, false);
	    if i=0 {
	        spr1 = sprite_create_from_surface(s, 0, 0, w, h, false, false, sprite_get_xoffset(argument0), sprite_get_yoffset(argument0));
	    } else {
	        sprite_add_from_surface(spr1, s, 0, 0, w, h, false, false);
	    }
    
	    draw_clear(c_white);
	    draw_set_blend_mode_ext(bm_zero, bm_src_alpha);
	    draw_sprite(argument0, i, sprite_get_xoffset(argument0), sprite_get_yoffset(argument0));
	    if i=0 {
	        spr2 = sprite_create_from_surface(s, 0, 0, w, h, false, false, sprite_get_xoffset(argument0), sprite_get_yoffset(argument0));
	    } else {
	        sprite_add_from_surface(spr2, s, 0, 0, w, h, false, false);
	    }
    
	}

	surface_reset_target();
	surface_free(s);
	draw_set_blend_mode(bm_normal);

	sprite_set_alpha_from_sprite(spr1, spr2);
	sprite_delete(spr2);

	return spr1;



}

// Draw wings
if(image_Direction != 3) {    
    wings_index += 0.2;
    if(wings_index > 6) wings_index = 0;
    draw_sprite_ext(sprWings, wings_index, x - (4*(image_Direction == 1)) + (4*(image_Direction == 2)), y, image_xscale, image_yscale, image_angle + (90*(image_Direction == 1)) + (270*(image_Direction == 2)), image_blend, image_alpha);
}

// Dibujar sombra
draw_sprite_ext( spr_Sombras, 1, x, y+8 + 8*Flying, 1 - (0.25*Flying), 1 - (0.25*Flying), image_angle, c_black, 0.3 );

// Draw player
draw_self();

// Draw wings post
if(image_Direction == 3) {    
    wings_index += 0.2;
    if(wings_index > 6) wings_index = 0;
    draw_sprite_ext(sprWings, wings_index, x, y + 0, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}


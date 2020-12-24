// Dibujar la rotacion
for(i = 0; i < 6; i++ ) {
    draw_sprite_ext(Sprite, image_index, x + 16*image_xscale*cos(degtorad(Angulo_Rotacion+(60*i))), y - 16*image_yscale*sin(degtorad(Angulo_Rotacion+(60*i))), image_xscale, image_yscale, Angulo_Rotacion+90+(60*i), image_blend, image_alpha);
}


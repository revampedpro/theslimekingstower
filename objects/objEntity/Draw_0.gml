/// @description Draw sprite
if (invincible > 0)
{
    if (floor(invincible/5) mod 2 == 0)
    {
        draw_sprite_ext(sprite_index, -1, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
    }
}
else
{
    if (damage_timer > 0)
    {
        d3d_set_fog(true, damage_colour, 0, 1);
    }
    draw_sprite_ext(sprite_index, -1, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
    if (damage_timer > 0)
    {
        d3d_set_fog(0, 0, 0, 0);
    }
}



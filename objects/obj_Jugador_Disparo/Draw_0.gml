// Caer
if(global.Pausado = false) {
    if(alarm[0] < 0) && (Altura > 0) && (!Sustain) Altura -= 0.5;
    if(Altura <= 8) instance_destroy();
}

// Dibujar sombra
shadow_size2 = shadow_size/2;
draw_set_colour(c_black);
draw_set_alpha(0.25);
draw_ellipse(x-shadow_size* min(1,Altura/16), y+5-shadow_size2* min(1,Altura/16), x+shadow_size* min(1,Altura/16), y+5+shadow_size2* min(1,Altura/16), false);
draw_set_alpha(1);
draw_set_colour(c_white);

// Draw auras
if(player_item_323) draw_sprite_ext(sprToxicAura,0,x,y+(16-Altura)-4,.75,.75,0,c_yellow,1);	
if(player_item_322) draw_sprite_ext(sprToxicAura,0,x,y+(16-Altura)-4,.35,.35,0,c_aqua,1);	

// Dibujar bala
drawSprite = sprite_index; 
drawAngle = image_angle;
if(Fire) { sprite_index = sprFire; drawAngle = 0; }
if(sprite_index == sprBone) boneAngle += 15;
draw_sprite_ext(drawSprite, image_index, x, y+(16-Altura)-4, image_xscale, image_yscale, drawAngle+boneAngle, image_blend, image_alpha);


if(image_index == 3) and (room == room_Tip or room == room_Jefe_Mimic) exit;
// Dibujarse
draw_sprite_ext(sprDoor, 4, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * xscale, image_yscale * yscale, image_angle, image_blend, image_alpha );

// If Active
if(trapActive) draw_sprite_ext(sprDoorSpikes, spikes, x, y, image_xscale*xscale, image_yscale*yscale, image_angle, image_blend, image_alpha);



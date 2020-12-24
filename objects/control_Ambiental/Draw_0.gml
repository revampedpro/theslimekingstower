// Dibujar oscuridad
//if(global.Quality == 0)exit;

// Draw particles on surface
if(global.Quality == 2) {
	if(!surface_exists(surf)) surf = surface_create(room_width,room_height);
	part_system_automatic_draw(Particle_System,false);
	surface_set_target(surf);
	draw_clear_alpha(c_black,0);
	part_system_drawit(Particle_System);
	surface_reset_target();
	draw_surface(surf,0,0);
} else {
	part_system_automatic_draw(Particle_System,true);
}

// Draw Sigma and portal colors
if(global.Mapa_Tipo == 11 and global.Quality > 1) {
    draw_set_blend_mode(bm_add);
    dir+=2
    if(dir>360) dir -= 360;
    color2=merge_color(c_white,c_gray,0.30)
    color1=merge_color(c_black,merge_color(merge_color(Bcolor1,c_purple,0.5+lengthdir_x(0.5,dir*3.12)),c_fuchsia,0.125+lengthdir_y(0.125,dir*1.73)),0.75+lengthdir_y(0.25,dir*1.73))
    draw_set_alpha(0.4);
    draw_rectangle_color(0,0,room_width,room_height,color1,color1,color2,color2,0)
    draw_set_alpha(1);
    draw_set_blend_mode(bm_normal);
}
if(global.Mapa_Tipo == 12 and global.Quality > 1) {
    draw_set_blend_mode(bm_add);
    dir+=2
    if(dir>360) dir -= 360;
    color2=merge_color(c_white,c_gray,0.6)
    color1=merge_color(c_black,merge_color(merge_color(Bcolor1,c_purple,0.5+lengthdir_x(0.5,dir*3.12)),c_fuchsia,0.125+lengthdir_y(0.125,dir*1.73)),0.75+lengthdir_y(0.25,dir*1.73))
    draw_set_alpha(0.4);
    draw_rectangle_color(0,0,room_width,room_height,color1,color1,color2,color2,0)
    draw_set_alpha(1);
    draw_set_blend_mode(bm_normal);
}

if(instance_exists(obj_Jugador)) {
        draw_set_color(c_black);
        
    // Si el jugador esta cerca de un spawn of shadow oscurece todo
    if(instance_exists(obj_Jugador) and instance_exists(obj_Shadow_Spawn)) {
        var Shadow_Spawn = instance_nearest(obj_Jugador.x, obj_Jugador.y, obj_Shadow_Spawn);
        if(point_distance(obj_Jugador.x, obj_Jugador.y, Shadow_Spawn.x, Shadow_Spawn.y)) < 48 {
            Alpha2 = tween_to(Alpha2, 1, 5);
        } else {
            Alpha2 = tween_to(Alpha2, Alpha, 20);
        }
    } else {
        Alpha2 = tween_to(Alpha2, Alpha, 20);
    }
    
    if(player_has_item(123)) Alpha2 = 0;
    if(player_has_item(132)) Alpha2 = 0.95;
    if(obj_Jugador.Pet_Bonus_Boss_ShadowSlime == true) Alpha2 = 0;
    
    draw_set_alpha(Alpha2);
    
    if(instance_exists(obj_Jugador)) {
        draw_rectangle(0,                           0, obj_Jugador.x-49,      room_height, 0);
        draw_rectangle(obj_Jugador.x-48,            0,       room_width, obj_Jugador.y-49, 0);
        draw_rectangle(obj_Jugador.x-48,  room_height,       room_width, obj_Jugador.y+48, 0);
        draw_rectangle(obj_Jugador.x+48,  obj_Jugador.y-48,  room_width, obj_Jugador.y+47, 0);
        draw_sprite_ext(spr_Luz, 0, obj_Jugador.x, obj_Jugador.y, 1, 1, 0, c_white, Alpha2);
    } else {
        draw_rectangle(0, 0, room_width, room_height, 0);
    }
    draw_set_alpha(1);
    
}


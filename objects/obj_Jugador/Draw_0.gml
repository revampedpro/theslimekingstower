// Dibujar overlay
var Pre_IS;
if( !global.Pausado and image_speed != 0 ) Pre_IS = image_speed;
if( global.Pausado ) image_speed = 0; else image_speed = Pre_IS;
if( global.Mapa_Tipo = 1 and global.Mapa_Nivel = 1 and global.Modo_Juego != "Arcade" and global.Modo_Juego != "BossRush" and check_room("centro")==2 ) {
    draw_sprite_ext(lang29, 0, room_width/2, room_height/2, 1, 1, 0, c_white, 1);
}

// Paralisis
if(paralisis > 0) image_index -= image_speed;

// Bullet shoot animation
if(Bonus_Static_Shoot == true) or (player_item_501) or (player_item_144 and alarm[0]<0) or (player_item_500) or (instance_exists(objFleshSoul)) {
    bulletShootAnimation = false;
} else {
    bulletShootAnimation = true;
}

// Calcular la cabeza
var sub_Image = 0;
if( alarm[4] < 0 ) {
    var sub_Image = 0;
    var image_Index = image_index;
    if(Velocidad_H > 0) sub_Image = 2;
    if(Velocidad_H < 0) sub_Image = 6;
    if(Velocidad_V > 0 and abs(Velocidad_V) >= abs(Velocidad_H)) sub_Image = 0;
    if(Velocidad_V < 0 and abs(Velocidad_V) >= abs(Velocidad_H)) sub_Image = 4;
    if(keyboard_check(tecla_Disparo_Derecha))   and (bulletShootAnimation == true) { image_Direction = 1; sprite_index = spr_Disparando_Derecha; }
    if(keyboard_check(tecla_Disparo_Izquierda)) and (bulletShootAnimation == true) { image_Direction = 2; sprite_index = spr_Disparando_Izquierda; }
    if(keyboard_check(tecla_Disparo_Abajo))     and (bulletShootAnimation == true) { image_Direction = 4; sprite_index = spr_Disparando_Abajo; }
    if(keyboard_check(tecla_Disparo_Arriba))    and (bulletShootAnimation == true) { image_Direction = 3; sprite_index = spr_Disparando_Arriba; }
    
    if(instance_exists(controlador_Disparo)) {
        if(controlador_Disparo.H != 0) {
            if(controlador_Disparo.A > 315 or  controlador_Disparo.A < 45)  and (bulletShootAnimation == true) { image_Direction = 1; sprite_index = spr_Disparando_Derecha; }
            if(controlador_Disparo.A > 135 and controlador_Disparo.A < 225) and (bulletShootAnimation == true) { image_Direction = 2; sprite_index = spr_Disparando_Izquierda; }
            if(controlador_Disparo.A > 225 and controlador_Disparo.A < 315) and (bulletShootAnimation == true) { image_Direction = 4; sprite_index = spr_Disparando_Abajo; }
            if(controlador_Disparo.A > 45  and controlador_Disparo.A < 135) and (bulletShootAnimation == true) { image_Direction = 3; sprite_index = spr_Disparando_Arriba; }
        }
    }
    
    // Floor sprite control
    if(!Flying) {
        if(abs(Velocidad_H) > 0 or abs(Velocidad_V) > 0) {
            if(keyboard_check(tecla_Disparo_Derecha))   and (bulletShootAnimation == true) { image_Direction = 1; sprite_index = spr_Disparando_Caminando_Derecha; }
            if(keyboard_check(tecla_Disparo_Izquierda)) and (bulletShootAnimation == true) { image_Direction = 2; sprite_index = spr_Disparando_Caminando_Izquierda; }
            if(keyboard_check(tecla_Disparo_Abajo))     and (bulletShootAnimation == true) { image_Direction = 4; sprite_index = spr_Disparando_Caminando_Abajo; }
            if(keyboard_check(tecla_Disparo_Arriba))    and (bulletShootAnimation == true) { image_Direction = 3; sprite_index = spr_Disparando_Caminando_Arriba; }
            if(instance_exists(controlador_Disparo)) {
                if(controlador_Disparo.H != 0) {
                    if(controlador_Disparo.A > 315 or  controlador_Disparo.A < 45)  and (bulletShootAnimation == true) { image_Direction = 1; sprite_index = spr_Disparando_Caminando_Derecha; }
                    if(controlador_Disparo.A > 135 and controlador_Disparo.A < 225) and (bulletShootAnimation == true) { image_Direction = 2; sprite_index = spr_Disparando_Caminando_Izquierda; }
                    if(controlador_Disparo.A > 225 and controlador_Disparo.A < 315) and (bulletShootAnimation == true) { image_Direction = 4; sprite_index = spr_Disparando_Caminando_Abajo; }
                    if(controlador_Disparo.A > 45  and controlador_Disparo.A < 135) and (bulletShootAnimation == true) { image_Direction = 3; sprite_index = spr_Disparando_Caminando_Arriba; }
                }
            }
            image_index = image_Index;
        }
        
        // Modificar el sprite del jugador si esta disparando el laser
        if(Laser_Direction != -1 and alarm[9] > 20) {
            if(Laser_Direction > 315 or  Laser_Direction <= 45)  { image_Direction = 1; sprite_index = spr_Disparando_Caminando_Derecha; }
            if(Laser_Direction > 135 and Laser_Direction <= 225) { image_Direction = 2; sprite_index = spr_Disparando_Caminando_Izquierda; }
            if(Laser_Direction > 225 and Laser_Direction <= 315) { image_Direction = 4; sprite_index = spr_Disparando_Caminando_Abajo; }
            if(Laser_Direction > 45  and Laser_Direction <= 135) { image_Direction = 3; sprite_index = spr_Disparando_Caminando_Arriba; }
        }
    } else {
    
    // Flying control
    if(abs(Velocidad_H) > 0 or abs(Velocidad_V) > 0) {
        if(keyboard_check(tecla_Disparo_Derecha))   and (bulletShootAnimation == true) { image_Direction = 1; sprite_index = spr_Disparando_Derecha; }
        if(keyboard_check(tecla_Disparo_Izquierda)) and (bulletShootAnimation == true) { image_Direction = 2; sprite_index = spr_Disparando_Izquierda; }
        if(keyboard_check(tecla_Disparo_Abajo))     and (bulletShootAnimation == true) { image_Direction = 4; sprite_index = spr_Disparando_Abajo; }
        if(keyboard_check(tecla_Disparo_Arriba))    and (bulletShootAnimation == true) { image_Direction = 3; sprite_index = spr_Disparando_Arriba; }
        if(instance_exists(controlador_Disparo)) {
            if(controlador_Disparo.H != 0) {
                if(controlador_Disparo.A > 315 or  controlador_Disparo.A < 45)  and (bulletShootAnimation == true) { image_Direction = 1; sprite_index = spr_Disparando_Derecha; }
                if(controlador_Disparo.A > 135 and controlador_Disparo.A < 225) and (bulletShootAnimation == true) { image_Direction = 2; sprite_index = spr_Disparando_Izquierda; }
                if(controlador_Disparo.A > 225 and controlador_Disparo.A < 315) and (bulletShootAnimation == true) { image_Direction = 4; sprite_index = spr_Disparando_Abajo; }
                if(controlador_Disparo.A > 45  and controlador_Disparo.A < 135) and (bulletShootAnimation == true) { image_Direction = 3; sprite_index = spr_Disparando_Arriba; }
            }
        }
        image_index = image_Index;
    }
    
    // Modificar el sprite del jugador si esta disparando el laser
    if(Laser_Direction != -1 and alarm[9] > 20) {
        if(Laser_Direction > 315 or  Laser_Direction <= 45)  { image_Direction = 1; sprite_index = spr_Disparando_Derecha; }
        if(Laser_Direction > 135 and Laser_Direction <= 225) { image_Direction = 2; sprite_index = spr_Disparando_Izquierda; }
        if(Laser_Direction > 225 and Laser_Direction <= 315) { image_Direction = 4; sprite_index = spr_Disparando_Abajo; }
        if(Laser_Direction > 45  and Laser_Direction <= 135) { image_Direction = 3; sprite_index = spr_Disparando_Arriba; }
    }
    
    }
    
    // Acelerar si está disparando
    if(sprite_index == spr_Disparando_Derecha)              image_speed = 0.3;
    if(sprite_index == spr_Disparando_Izquierda)            image_speed = 0.3;
    if(sprite_index == spr_Disparando_Arriba)               image_speed = 0.3;
    if(sprite_index == spr_Disparando_Abajo)                image_speed = 0.3;
        
    // Dibujar sombra
    draw_sprite_ext( spr_Sombras, 1, x, y+8 + 8*Flying, 1 - (0.25*Flying), 1 - (0.25*Flying), image_angle, c_black, 0.3 );

    // Draw wings
    if(Flying) and (image_Direction != 3) {    
        wings_index += 0.2;
        if(wings_index > 6) wings_index = 0;
        draw_sprite_ext(sprWings, wings_index, x - (4*(image_Direction == 1)) + (4*(image_Direction == 2)), y, image_xscale+(rage/10), image_yscale+(rage/10), image_angle + (90*(image_Direction == 1)) + (270*(image_Direction == 2)), image_blend, image_alpha);
    }
    
    // Dibujar cuerpo
    var vv = 255 - (155*(paralisis>0));
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale+(rage/10), image_yscale+(rage/10), image_angle, make_color_rgb(vv,vv,vv), image_alpha);

    // Flash de golpe
    if(alarm[2] > 0) {
        d3d_set_fog( 1, flashColor, 0, 0 );
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale+(rage/10), image_yscale+(rage/10), image_angle, image_blend, image_alpha);
        d3d_set_fog( 0, c_white, 0, 0 );
    }
} else {

    // Dibujar sombra
    //if(ShowItemID != Show_Item_ID) {
	if(ShowItemID == -1) {
        ShowItemID = get_item(Show_Item_ID,3);
    }
    draw_sprite_ext(spr_Sombras, 1, x, y+8 + 8*Flying, 1 - (0.25*Flying), 1 - (0.25*Flying), image_angle, c_black, 0.3);

    // Draw wings
    if(Flying) and (image_Direction != 3) {    
        wings_index += 0.2;
        if(wings_index > 6) wings_index = 0;
        draw_sprite_ext(sprWings, wings_index, x - (4*(image_Direction == 1)) + (4*(image_Direction == 2)), y, image_xscale+(rage/10), image_yscale+(rage/10), image_angle + (90*(image_Direction == 1)) + (270*(image_Direction == 2)), image_blend, image_alpha);
    }
    
    draw_sprite_ext(spr_Get_Item, -1, x, y, image_xscale+(rage/10), image_yscale+(rage/10), image_angle, image_blend, image_alpha);
    if(ShowItemID > -1) draw_sprite_ext(ShowItemID, -1, x+6, y-10 - 12, 1, 1, image_angle, image_blend, image_alpha);

    // Flash de golpe
    if(alarm[2] > 0) {
        d3d_set_fog( 1, flashColor, 0, 0 );
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale+(rage/10), image_yscale+(rage/10), image_angle, image_blend, image_alpha);
        draw_sprite( spr_Get_Item, sub_Image + (alarm[1]>0), x, y-14 );
        d3d_set_fog( 0, c_white, 0, 0 );
    }
}

// Draw wings
if(Flying) and (image_Direction == 3) {    
    wings_index += 0.2;
    if(wings_index > 6) wings_index = 0;
    draw_sprite_ext(sprWings, wings_index, x, y + 0, image_xscale+(rage/10), image_yscale+(rage/10), image_angle, image_blend, image_alpha);
}

// Dibujar friends
var has_glue = player_item_302;
var fl = min(6,array_length_1d(Friends));
for(ff = 0; ff < fl; ff++ ) {
    if(Friends[ff] != -1) {
        ffr = (Friends_R + ff*360/fl)*!has_glue;
        ffx = x+20*(cos(degtorad(ffr)));
        ffy = y-20*(sin(degtorad(ffr)));
        if(FriendsSPR[ff] == -1) FriendsSPR[ff] = get_item(Friends[ff],3);
        draw_sprite_ext(FriendsSPR[ff], 0, ffx, ffy, .75, .75, 0, c_white, 1);
        with(parent_Enemigo) {
            var OX = other.ffx;
            var OY = other.ffy;
            if(point_distance(OX, OY, x, y) < 10) and (alarm[2]<0) {
                HP-=(2 + has_glue);
                var f = floating_text(x-4+random(8), y-4+random(8), string((2 + has_glue)), make_color_rgb(255, 20, 20), true);
				f.alarm[0] = 60;
                if(HP <= 0) instance_destroy();
                alarm[2] = 2;
            }
        }
    }
}

// Draw Deodorant
if(player_item_240) {
    draw_set_color(c_lime);
    draw_set_alpha(0.7);
    draw_circle(x,y,32,1);
    draw_set_alpha(1);
}




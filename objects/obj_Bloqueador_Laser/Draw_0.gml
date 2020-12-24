
// Parar sonido del laser
if(audio_is_playing(snd_Laser2) and alarm[0] <= 180) {
    audio_sound_gain(snd_Laser2, 0, 200);
}

// Disparar laser
if(alarm[0]>180) {
    draw_set_blend_mode(bm_add);
    
    // Calcula la distancia y angulo
    var Angulo = Direccion - 0.5 + random(1);
    var Distancia = range_finder(x+12, y+12, Angulo, 600, parent_Solid, true, true);
    var X1 = x+12; 
    var X2 = x+12 + cos(degtorad(Angulo))*(Distancia+1);
    var Y1 = y+12; 
    var Y2 = y+12 - sin(degtorad(Angulo))*(Distancia+1);
    
    // Si colisiona
    if(Distancia != -1) {
    
        // Sonido
        if(!audio_is_playing(snd_Laser2)) {
            audio_play_sound(snd_Laser2, 0, 0);
            audio_sound_gain(snd_Laser2, 1, 0);
        }
            
        // Dibuja el laser
        draw_set_color(c_red);
        draw_set_alpha(0.1);
        draw_line_width(X1, Y1, X2, Y2, 20);
        draw_set_alpha(0.2);
        draw_line_width(X1, Y1, X2, Y2, 16);
        draw_set_alpha(0.2);
        draw_line_width(X1, Y1, X2, Y2, 12);
        draw_set_color(choose(c_aqua, c_white, c_white));
        draw_set_alpha(0.3);
        draw_line_width(X1, Y1, X2, Y2, 8);
        draw_set_alpha(0.3);
        draw_line_width(X1, Y1, X2, Y2, 5);
        
        // Crea particulas de choque
        var Particula = instance_create(X2, Y2, fx_Laser_Particle);
        Particula.image_blend = c_red;
        shake_camera(1,1);
        
        // Dañar al jugador
        if(collision_line(X1, Y1, X2, Y2, obj_Jugador, 0, 1)) {
            with(obj_Jugador) scr_jugador_common_hurt(1);
        }
                
        // Destruir destructibles
        if(collision_line(X1, Y1, X2, Y2, parent_Destruible, 0, 1)) {
            var Destruible = collision_line(X1, Y1, X2, Y2, parent_Destruible, 0, 1);
            with(Destruible) {
                if(sprite_index = sprPot) {
                    event_perform(ev_other,ev_user0);
                }
                instance_destroy();
            }
        }
           
    }
    
    draw_set_blend_mode(bm_normal);
    draw_set_alpha(1);
}

// Dibujarse
draw_self();


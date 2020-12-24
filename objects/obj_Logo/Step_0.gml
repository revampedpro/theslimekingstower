// Intro
if( Moverse = true ) {

        var FX = create_effect( x-25-random(25), y -20+random(40), sprSmoke, 0.25 );
        FX.image_xscale = 2;
        FX.image_yscale = 2;
        FX.depth = depth+3;
        FX.image_blend = c_gray;
        FX.image_alpha = 0.7 + random(3)/10;
        var FX = create_effect( x-25-random(25), y -20+random(40), sprSmoke, 0.25 );
        FX.image_xscale = 2;
        FX.image_yscale = 2;
        FX.depth = depth+2;
        FX.image_blend = c_gray;
        FX.image_alpha = 0.7 + random(3)/10;
        var FX = create_effect( x-25-random(25), y -20+random(40), sprSmoke, 0.25 );
        FX.image_xscale = 2;
        FX.image_yscale = 2;
        FX.depth = depth+1;
        FX.image_blend = c_gray;
        FX.image_alpha = 0.7 + random(3)/10;
    
    if( x < xstart+120 ) x += abs( x-(xstart+120) )/10;
    if( x >= xstart   ) { V = abs( x-(xstart+120) )/10; xscale = 0.75; yscale = 1; Moverse = false; }
    
}

if ( Moverse = false and xscale > 0.95 ) {

    var FX = create_effect( x-56-random(142), y -20+random(40), sprSmoke, 0.25 );
    FX.image_xscale = 2;
    FX.image_yscale = 2;
    FX.depth = depth+3;
    FX.image_blend = c_gray;
    FX.vspeed = - (random(1) + 0.5);
    
    var FX = create_effect( x-60-random(142), y -20+random(40), sprSmoke, 0.25 );
    FX.image_xscale = 2;
    FX.image_yscale = 2;
    FX.depth = depth+2;
    FX.image_blend = c_orange;
    FX.vspeed = - (random(1) + 0.5);
    
    var FX = create_effect( x-60-random(142), y -20+random(40), sprSmoke, 0.25 );
    FX.image_xscale = 2;
    FX.image_yscale = 2;
    FX.depth = depth+1;
    FX.image_blend = make_color_rgb(53,154,221);
    FX.vspeed = - (random(1) + 0.5);
    
}

// Cambiar de room
if( Activado = true and !instance_exists(fx_Transition_OutSlow) ) {
	//if(os_type == os_android) room_goto(room_AndroidLogin);
    //else 
	room_goto_next();
}

// Cambio rapido
if(global.DEBUG_MODE) and (mouse_check_button_pressed(mb_left)) {
	//if(os_type == os_android) room_goto(room_AndroidLogin);
	//else 
	room_goto_next();	
}
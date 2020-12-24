if(!s) {
    draw_surface_ext(application_surface,0,0,aspectH,aspectV,0,-1,1)
    draw_surface_ext(application_surface,0,0,aspectH,aspectV,0,-1,1)
    exit;
}
if (currentframe > 1) {
application_surface_enable(false);
    // convert the number of frames that have passed into a number between 0 and the room width

    if(Direccion = "derecha") {
    var slideamount = EaseOutCubic(currentframe,0,room_width,maxframes)
        if (surface_exists(sur_oldroom)) draw_surface_ext(sur_oldroom,-slideamount,0,aspectH,aspectV,0,-1,1)
        if (surface_exists(sur_newroom)) draw_surface_ext(sur_newroom,room_width-slideamount,0,aspectH,aspectV,0,-1,1)
        if (surface_exists(sur_oldroom)) draw_surface_ext(sur_oldroom,-slideamount,0,aspectH,aspectV,0,-1,1)
        if (surface_exists(sur_newroom)) draw_surface_ext(sur_newroom,room_width-slideamount,0,aspectH,aspectV,0,-1,1)
    }

    if(Direccion = "izquierda") {
    var slideamount = EaseOutCubic(currentframe,0,room_width,maxframes)
        if (surface_exists(sur_oldroom)) draw_surface_ext(sur_oldroom,+slideamount,0,aspectH,aspectV,0,-1,1)
        if (surface_exists(sur_newroom)) draw_surface_ext(sur_newroom,-room_width+slideamount,0,aspectH,aspectV,0,-1,1)
        if (surface_exists(sur_oldroom)) draw_surface_ext(sur_oldroom,+slideamount,0,aspectH,aspectV,0,-1,1)
        if (surface_exists(sur_newroom)) draw_surface_ext(sur_newroom,-room_width+slideamount,0,aspectH,aspectV,0,-1,1)
    }

    if(Direccion = "arriba") {
    var slideamount = EaseOutCubic(currentframe,0,room_height,maxframes)
        if (surface_exists(sur_oldroom)) draw_surface_ext(sur_oldroom,0,+slideamount,aspectH,aspectV,0,-1,1)
        if (surface_exists(sur_newroom)) draw_surface_ext(sur_newroom,0,-room_height+slideamount,aspectH,aspectV,0,-1,1)
        if (surface_exists(sur_oldroom)) draw_surface_ext(sur_oldroom,0,+slideamount,aspectH,aspectV,0,-1,1)
        if (surface_exists(sur_newroom)) draw_surface_ext(sur_newroom,0,-room_height+slideamount,aspectH,aspectV,0,-1,1)
    }

    if(Direccion = "abajo") {
    var slideamount = EaseOutCubic(currentframe,0,room_height,maxframes)
        if (surface_exists(sur_oldroom)) draw_surface_ext(sur_oldroom,0,-slideamount,aspectH,aspectV,0,-1,1)
        if (surface_exists(sur_newroom)) draw_surface_ext(sur_newroom,0,room_height-slideamount,aspectH,aspectV,0,-1,1)
        if (surface_exists(sur_oldroom)) draw_surface_ext(sur_oldroom,0,-slideamount,aspectH,aspectV,0,-1,1)
        if (surface_exists(sur_newroom)) draw_surface_ext(sur_newroom,0,room_height-slideamount,aspectH,aspectV,0,-1,1)
    }
    
}


/// I do this to hide the flicker where the next room pops up for 1 frame 
if (currentframe == 1) { 
    if (surface_exists(sur_oldroom)) {
        draw_surface_ext(sur_oldroom,0,0,aspectH,aspectV,0,-1,1)
        draw_surface_ext(sur_oldroom,0,0,aspectH,aspectV,0,-1,1)
    }
}


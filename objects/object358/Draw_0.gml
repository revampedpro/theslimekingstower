// Calculate alpha of different light focus.
if Alpha3 < Alpha { Alpha3 += abs(Alpha3 - Alpha)/10; }
if Alpha3 > Alpha { Alpha3 -= abs(Alpha3 - Alpha)/10; }
Alpha3 = clamp(Alpha3 + (global.Darkness/50),0,1);

// Calculate the distance to the nearest dynamic light.
if((distance_to_object(instance_nearest(x,y,obj_Light_Dynamic))/250) < 1) {
    Alpha2 = (distance_to_object(instance_nearest(x,y,obj_Light_Dynamic))/250);
}

// Draw the sprite getting darker if needed.
    if( Alpha2 < global.Darkness){
        var Color = make_color_rgb(255*(1-Alpha2),255*(1-Alpha2),255*(1-Alpha2));
    }else{    
        var Color = make_color_rgb(255*(1-global.Darkness),255*(1-global.Darkness),255*(1-global.Darkness));
    }

//draw_background_part_ext(Tileset,Tileset_X*16,Tileset_Y*16,Tileset_W,Tileset_H,x,y - (((Tileset_H/16)-1)*16),1,1,Color,1);



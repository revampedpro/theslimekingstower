// Calculate alpha of different light focus.
if(global.Quality != 2)exit;
if Alpha3 < Alpha { Alpha3 += abs(Alpha3 - Alpha)/10; }
if Alpha3 > Alpha { Alpha3 -= abs(Alpha3 - Alpha)/10; }
Alpha3 = Alpha;
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

// Apuntar los datos en el control
control.Sombras_I[array_length_1d(control.Sombras_I)] = Alpha3;
control.Sombras_X[array_length_1d(control.Sombras_I)] = x;
control.Sombras_Y[array_length_1d(control.Sombras_I)] = y;
instance_destroy();


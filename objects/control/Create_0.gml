// Redraw all blocks shadows
Alpha = 1;
instance_create(0, 0, floorLighting);
/*
alarm[0] = 2;
Sombras_I[0] = -1;
Sombras_X[0] = -1;
Sombras_Y[0] = -1;

// Borrar el background de la surface de oscuridad casteada si ya fue creado antes
if(sprite_exists(global.Sprite_Oscuridad_Casteada)) {
    sprite_delete(global.Sprite_Oscuridad_Casteada);
    global.Sprite_Oscuridad_Casteada = noone;
}

// Crear sprite de casteador de oscuridad premultiplicado
//Sprite_Oscuridad_Procesada = create_premultiplied_sprite(spr_Block_Shadow);

/* */
/*  */

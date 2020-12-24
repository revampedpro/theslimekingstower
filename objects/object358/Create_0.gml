// Autotile vars
//Tileset = tileset;
Tileset_X = 4; 
Tileset_Y = 1;
Tileset_W = 16;
Tileset_H = 16;
alarm[0]  = 1; // Delay the auto-tile checking.

// Light vars
Alpha  = 0;
Alpha2 = 1;
Alpha3 = 0;
Shadow = global.Shadow;

// If it's placed inside another block destroy it. (This shouldn't happen)
if(!place_free(x,y)){
    instance_destroy();
}


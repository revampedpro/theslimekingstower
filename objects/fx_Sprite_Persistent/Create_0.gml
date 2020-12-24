/// @description  Morir
alarm[0] = random(300) + 180;

// Compress
if(global.COMPRESS_DETAILS == true) and (room != room_Arcade) {
    alarm[0] = 1;
}

if(instance_number(fx_Sprite_Persistent)>10+30*global.Quality) with(fx_Sprite_Persistent.id) alarm[0] = 1;



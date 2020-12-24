// Open
if(image_index == 0)and(alarm[1]<0) {
    image_index = 1;
    alarm[0] = 120;
    script_execute(Pool);
    audio_play_sound(sndChestOpen,0,0);
}

// Be repelled
var dd = point_direction(x, y, other.x, other.y);
var cs = .5;
var cx = cos(degtorad(dd))*cs;
var cy = sin(degtorad(dd))*cs;
if(place_free(x - cx, y)) x -= cx;
if(place_free(x, y + cy)) y += cy;
other.hSpeed = 0;
other.vSpeed = 0;


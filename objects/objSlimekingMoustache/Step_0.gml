// Bounce
y2 += vs;
if(y2 < ystart) vs += 0.05;
if(y2 > ystart) {
    if(vs > 0.1) audio_play_sound(snd_Moneda,0,0);
    y2 = ystart;
    vs /= 2;
    vs *= -1;
}


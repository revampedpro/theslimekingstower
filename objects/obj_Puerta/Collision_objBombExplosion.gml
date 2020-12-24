// open secret room
if(secretroom) {
    solid = false;
    image_index = 5;
}

if(!islocked) or (player_has_item(327)) {
	if(image_index == 1) {
        xscale = 1.3;
        yscale = 1.3;
        image_index = 2;
        audio_play_sound(snd_Puerta_Abrir,1,0);
    }	
}
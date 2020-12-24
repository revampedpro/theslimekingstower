if(pos <= string_length(chain)) {

	var c = string_char_at(chain,pos);
	switch(real(c)) {
		case 0: audio_play_sound(sndMusicalBlock1,0,0); with(obj_MusicalBlock) { if(image_index == 0) { xscale = 1.25; yscale = 1.25; repeat(irandom_range(4,7)) { var f = create_effect(x-12+random(24),y-12+random(12),sprSparkle,0.3+random(3)/10); f.vspeed = -(0.1+random(5)/10); f.image_blend = choose(c_white,c_aqua);    }}} break;
		case 1: audio_play_sound(sndMusicalBlock2,0,0); with(obj_MusicalBlock) { if(image_index == 1) { xscale = 1.25; yscale = 1.25; repeat(irandom_range(4,7)) { var f = create_effect(x-12+random(24),y-12+random(12),sprSparkle,0.3+random(3)/10); f.vspeed = -(0.1+random(5)/10); f.image_blend = choose(c_white,c_lime);    }}} break;
		case 2: audio_play_sound(sndMusicalBlock3,0,0); with(obj_MusicalBlock) { if(image_index == 2) { xscale = 1.25; yscale = 1.25; repeat(irandom_range(4,7)) { var f = create_effect(x-12+random(24),y-12+random(12),sprSparkle,0.3+random(3)/10); f.vspeed = -(0.1+random(5)/10); f.image_blend = choose(c_white,c_fuchsia); }}} break;
		case 3: audio_play_sound(sndMusicalBlock4,0,0); with(obj_MusicalBlock) { if(image_index == 3) { xscale = 1.25; yscale = 1.25; repeat(irandom_range(4,7)) { var f = create_effect(x-12+random(24),y-12+random(12),sprSparkle,0.3+random(3)/10); f.vspeed = -(0.1+random(5)/10); f.image_blend = choose(c_white,c_yellow);  }}} break;
	}
	alarm[0] = 30;	
	pos++;
}



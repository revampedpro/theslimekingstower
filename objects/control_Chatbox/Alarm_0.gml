// Add char to text
if(text != text_to) {
	var char = string_char_at(text_to,pos);
	if(char == "Ä") { text_to = string_replace(text_to,"Ä"," ") char = " "; };
	if(char == "~") { text_to = string_replace(text_to,"~"," ") char = " "; };
	if(char == "¦") { text_to = string_replace(text_to,"¦"," ") char = " "; };
	text += char;
	text2 = text+"A";
	pos++;
	alarm[0] = text_speed;
	audio_stop_sound(sndTextboxCharacter);
	audio_play_sound(sndTextboxCharacter,0,0);	
	
	var char2;
	if(text != text_to) char2 = string_char_at(text_to,pos+1); else char2 = char;
	switch(char2) {
		case ",": alarm[0] *= 2; break;
		case ".": alarm[0] *= 8; break;
		case "!": alarm[0]  = 1; break;
		case "~":
		
			// Spawn bosses
			spawn_boss(x,y,1);
			spawn_boss(x,y,2);
			spawn_boss(x,y,4);
			spawn_boss(x,y,5);
			
			// Close doors
			with(obj_Puerta) {
			    if(image_index != 3) {
			        audio_play_sound(sprSpikeBlockHit, 0, 0);
			        image_index = 1;
			    }
			}
			
		break;
		case "Ä": dungeon_goto_level(14,1); break;
		case "¦": dungeon_goto_level(16,1); break;
	}
	
}
started = true;
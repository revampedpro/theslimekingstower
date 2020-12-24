// Warp
if(ds_list_find_index(targets,other.id) != -1) exit;
var i = image_index;
var p = other.id;
with(objWarpBlock) {
	if(i == 0 and image_index == 1) or (i == 1 and image_index == 0)
	or(i == 2 and image_index == 3) or (i == 3 and image_index == 2) {
		p.x = x;
		p.y = y;
		ds_list_add(targets,p.id);
		repeat(4) {
			var s = create_effect(x,y,sprSmoke,0.3+random(3)/10);
			s.vspeed = -(0.1+random(5)/10);
		}
		with(other) {
			ds_list_add(targets,p.id);
			repeat(4) {
				var s = create_effect(x,y,sprSmoke,0.3+random(3)/10);
				s.vspeed = -(0.1+random(5)/10);
			}	
		}
	}
	var s = audio_play_sound(snd_Eye_Die,0,0);
	audio_sound_pitch(s,1.2);
	alarm[0] = 240;
}
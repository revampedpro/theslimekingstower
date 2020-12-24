// Saltar
xscale = 0.6;
yscale = 0.6;

// Change
Opcion++;
if(Opcion > 3) Opcion = 0;
global.Control_Sonido = Opcion;
image_index = 0;

// Text control
switch(Opcion) {
    case 0: menu_text = string_upper(lang(7021)); break;
    case 1: menu_text = string_upper(lang(7022)); break;
    case 2: menu_text = string_upper(lang(7029)); break;
    case 3: menu_text = string_upper(lang(7030)); break;
}

// Audio control
switch(Opcion) {
    case 0: audio_master_gain(1); audio_group_set_gain(audiogroup_default, 1, 0); audio_group_set_gain(audiogroup_music, 1, 0); break;
    case 1: audio_master_gain(1); audio_group_set_gain(audiogroup_default, 1, 0); audio_group_set_gain(audiogroup_music, 0, 0); break;
    case 2: audio_master_gain(1); audio_group_set_gain(audiogroup_default, 0, 0); audio_group_set_gain(audiogroup_music, 1, 0); break;
    case 3: audio_master_gain(0); break;
}



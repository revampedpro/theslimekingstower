alpha += spd;
if(alpha > alphamax) {
    if(to == 0) room_goto_previous();
    if(to == 1) room_goto_next();
    if(room == cutscene05)    room_goto(room_GameOver);
    if(room == cutscene06)    room_goto(room_GameOver);
    if(room == cutscene07)    room_goto(room_GameOver);
}
draw_set_color(c_black);
draw_set_alpha(min(1,alpha));
if(room == cutscene04) draw_set_color(c_white);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);
if(room != cutscene03)and(room != cutscene03_02) audio_sound_gain(bgmCutscenes,max(.5,min(1,1-alpha)),0);
if(room == cutscene03)or(room == cutscene03_02) audio_sound_gain(bgmBarambience,1-alpha,0);
if(room != cutscene04) audio_sound_gain(bgmBarambienceLofi,1-alpha,0);
if(room == cutscene04) audio_sound_gain(bgmAlphaLofi,1-alpha,0);
//audio_sound_gain(BGM_Ending,min(1,1-alpha),0);


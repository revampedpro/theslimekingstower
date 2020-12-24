// Draw flash
time++;
if(time>=360)time = 0;
var s = 0.5 * abs(sin(degtorad(time)));
draw_sprite_ext(sprCutscene05Flash,0,x,y,image_xscale-s/4,image_yscale-s/4,0,-1,image_alpha*(0.5+s));

// Draw crown
var spr = sprCutscene05Crown;
if(room == cutscene06) spr = sprCutscene06Moustache;
draw_sprite_ext(spr,0,x,y,1,1,0,-1,image_alpha);


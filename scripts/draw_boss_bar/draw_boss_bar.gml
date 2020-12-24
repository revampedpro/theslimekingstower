/// @description draw_boss_bar
/// @param hp
/// @param max_hp
function draw_boss_bar() {
	var BX = 320-115;
	var BY = 280;
	var BS = 234;

	BHP  = clamp(tween_to(BHP,(argument[0]/argument[1]),10),0.025,1);
	BHP2 = clamp(tween_to(BHP2,BHP-0.025,40),0.025,1);
	var p1 = BX-2+clamp(BHP,0.025,0.975)*BS;
	var p2 = BX-3+BHP2*BS;
		
	// Shadow
	draw_sprite_ext(sprUIBossBar,2,BX+6,BY+6,1,1,0,c_black,0.5);
		
	draw_sprite(	 sprUIBossBar,2,BX,		BY							  );
	
	draw_sprite_part(sprUIBossBar,1,2,		9,	BHP2*BS,22,	BX,			BY);
	draw_sprite_part(sprUIBossBar,1,BS-2-4,	9,	4,		22,	p2,	BY);
	
	draw_sprite_part(sprUIBossBar,0,2,		9,	BHP *BS,22,	BX,			BY);
	draw_sprite_part(sprUIBossBar,0,BS-2-4,	9,	4,		22,	p1,	BY);
	
	var aa = clamp(abs(BHP-(argument[0]/argument[1]))*20,0,1);
	draw_sprite_part_ext(sprUIBossBar,4,2,		9,	BHP *BS,22,	BX,			BY,1,1,make_color_rgb(255,150,150),aa);
	draw_sprite_part_ext(sprUIBossBar,4,BS-2-3,	9,	3,		22,	p1,	BY		  ,1,1,make_color_rgb(255,150,150),aa);
	
	draw_sprite(	 sprUIBossBar,3,BX,		BY-7						  );
	
	draw_set_font(font_UI);
	draw_set_font(fontTextbox);

	var _x = BX + 110 - string_width(lang33)/2;
	var _y = BY - 1+2;
	var _w = 0;
	var sl = string_length(lang33);
	for(var i = 1; i <= sl; i++) {
		var c = string_char_at(lang33,i);
		draw_text_color(_x+_w+2,_y+3+2+wave(-1,1,1,i/10),c,c_black,c_black,c_black,c_black,0.75);
		draw_text_color(_x+_w,_y+3+wave(-1,1,1,i/10),c,c_white,c_white,c_white,c_white,1);	
		_w += string_width(c);
	}
		


}

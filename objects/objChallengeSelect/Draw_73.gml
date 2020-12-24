// Escala
if(p == instance_number(objChallengeSelect) or p == 0) and (global.characterSelected != playerID) global.characterSelected = playerID;
if(xScale < 1) xScale += 0.05;
if(yScale < 1) yScale += 0.05;
if(xScale > 1) xScale = 1;
if(yScale > 1) yScale = 1;
index += 0.1;
if(shakeX > 0) shakeX = (abs(shakeX)-1) * choose(1,-1);
if(shakeY > 0) shakeY = (abs(shakeY)-1) * choose(1,-1);
if(index >= maxNumber) index = 0;
alpha = tween_to(alpha, 1, 40);
x2 = tween_to(x2,x,7);
y2 = tween_to(y2,y,7);
var xScale2 = (0.5+ease("easeOutBack",xScale)) * 2*abs((y2-150)/76);
var yScale2 = (0.5+ease("easeOutBack",yScale)) * 2*abs((y2-150)/76);
if(global.characterSelected != playerID) index = 0;

// Draw character
if(!check_challenge_unlocked(playerID)) {
    draw_sprite_ext(sprChallengeIcon,0,shakeX+x2,shakeY+y2,xScale2+.5,yScale2+.5,0,image_blend,alpha);
} else { 
    draw_sprite_ext(sprChallengeIcon,1,shakeX+x2,shakeY+y2,xScale2+.5,yScale2+.5,0,c_white,alpha);
    draw_sprite_ext(sprChallengeComplete,0,shakeX+x2,shakeY+y2,xScale2+.5,yScale2+.5,0,c_white,alpha);
}

// Draw no
if(global.characterSelected == playerID) {
    draw_set_font(fontCharacterName);
    var no = playerID+1;
    if(no < 10) no = "0" + string(no); else no = string(no);
    draw_set_alpha(0.77);
    draw_set_color(c_black);
    draw_text(x2+2,y2+2-40,string_hash_to_newline("\\#"+no));
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(x2,y2-40,string_hash_to_newline("\\#"+no));
    
    if(check_challenge_unlocked(playerID)) {
        draw_set_font(fontCharacterDescription8);
        draw_set_alpha(0.77);
        draw_set_color(c_black);
        draw_text(x2+1,y2+1+30,string_hash_to_newline(lang(6504)));
        draw_text(x2+2,y2+2+30,string_hash_to_newline(lang(6504)));
        draw_set_alpha(1);
        draw_set_color(c_red);
        draw_text(x2,y2+30,string_hash_to_newline(lang(6504)));
    }
}


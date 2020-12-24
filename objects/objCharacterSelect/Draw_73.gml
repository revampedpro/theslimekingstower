// Escala
if(p == instance_number(objCharacterSelect) or p == 0) and (global.characterSelected != playerID) {
    global.characterSelected = playerID;
    objCharacterInfo.unlocked  = check_character_unlocked(playerID,0);
    objCharacterInfo.slimeking = check_character_unlocked(playerID,1);
    objCharacterInfo.basement  = check_character_unlocked(playerID,2);
    objCharacterInfo.portal    = check_character_unlocked(playerID,3);
    objCharacterInfo.skeleton  = check_character_unlocked(playerID,4);
    objCharacterInfo.mimic     = check_character_unlocked(playerID,5);
}
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

// Draw self
//draw_sprite_ext(sprite_index, (global.characterSelected == playerID), shakeX+x2, shakeY+y2, xScale2, yScale2, 0, image_blend, alpha);

// Draw character
if(unlocked == false) draw_sprite_ext(get_character(playerID,"sprite"),index,shakeX+x2,shakeY+y2,xScale2+.5,yScale2+.5,0,c_black,alpha);
if(unlocked == true)  draw_sprite_ext(get_character(playerID,"sprite"),index,shakeX+x2,shakeY+y2,xScale2+.5,yScale2+.5,0,image_blend,alpha);

//draw_text(x2,y2,p);


var xx = irandom_range(165,450);
var yy = irandom_range(90,230);
var rocks = instance_create(round(xx)/24*24, round(yy)/24*24, objFallingRock);
rocks.y2 += random(100);
rocks.sprite_index = spr_Item_Moneda;
yspeed = -10;
// Vars

// Create stats up
var s = instance_create(x+200, y, objLevelUpStat);
s.stat = 0;
s.x_to = x - 40;
s.y_to = y - 30;
var s = instance_create(x, y+100, objLevelUpStat);
s.stat = 1;
s.x_to = x - 00;
s.y_to = y - 30;
var s = instance_create(x-200, y, objLevelUpStat);
s.stat = 2;
s.x_to = x + 40;
s.y_to = y - 30;
Y += vy;
if(Y > 0) {
    Y = 0;
    if(abs(vy)>1) vy = -vy/2; else vy = 0;
}
if(Y <=0) vy += g;

if(instance_exists(fxTransition2)) and (!visible) {
    alarm[8] = 5 + irandom(10);
}


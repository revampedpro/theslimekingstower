// Movement Smooth
x = tween_to(x,x2,3);
y = tween_to(y,y2,3);

// Depth
depth = -y;

// Invencibility Flashing
if(alarm[3] > 0 and alarm[8] < 0) {
    alarm[8] = 4;
}

// Match alarms with player
alarm[3] = obj_Jugador.alarm[3];
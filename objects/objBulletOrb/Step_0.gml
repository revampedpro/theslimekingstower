// Change target
if(global.Pausado) exit;
if(instance_exists(fxTransition2)) exit;
if(instance_exists(fxTransition3)) exit;
if(!instance_exists(obj_Jugador)) { instance_destroy(); exit;  }
depth = -(y);


// Move
x += spd*cos(degtorad(dir));
y -= spd*sin(degtorad(dir));

// Shoot
if(alarm[0] < 0) alarm[0] = cadence;

// Squeeze
image_xscale = wave(0.8,1.2,0.5,0);
image_yscale = wave(1.2,0.8,0.5,0);
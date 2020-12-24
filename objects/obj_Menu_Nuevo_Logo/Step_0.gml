// Flotar
giro += giro_v;
giro_v += giro_a * giro_d;
giro_v = clamp(giro_v, -0.25, 0.25);
if(giro >  giro_m*5) giro_d = -1;
if(giro < -giro_m*5) giro_d = 1;


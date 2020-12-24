// Posicionarse
x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 50;
y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 50;
image_alpha -= 0.05;
image_xscale += 0.1;
image_yscale += 0.1;
if(image_alpha <= 0) instance_destroy();


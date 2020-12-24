// Draw circle
size -= decay_rate;
if(merge < 1) merge += 0.05; else merge = 1;
var color3 = merge_color(color,color2,merge);
if(size <= 0) instance_destroy();
draw_circle_color(x,y,size,color3,color3,0);
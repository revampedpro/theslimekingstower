// Damage enemies
with(parent_Enemigo) {
    if(distance_to_object(other.id)<20) and (alarm[2] < 0) {
        HP--;
        var f = floating_text(x,y,"1",c_lime,1);
		f.alarm[0] = 60;
    }
}
alarm[6] = 10;


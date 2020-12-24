// Damage enemies
with(parent_Enemigo) {
    if(distance_to_object(other.id)<20) and (alarm[2] < 0) {
        HP-=5;
        var f = floating_text(x,y,"5",c_purple,1);
		f.alarm[0] = 60;
    }
}
alarm[6] = 10;


// Manejar amigos
Friends_R+=4;

// Dibujar friends
for( ff = 0; ff < array_length_1d(Friends); ff++ ) {
    if( Friends[ff] != -1 ) {
        var ffr = ff*Friends_R/array_length_1d(Friends) ;
        var ffx = x+20*(cos(degtorad(ffr)));
        var ffy = y-20*(sin(degtorad(ffr)));
        draw_sprite_ext( sprBullet, 0, ffx, ffy, 1, 1, ffr + 90, c_white, 1 );
        with( parent_Enemigo ) {
            var OX = other.x + 20 * (cos(degtorad( other.ff*other.Friends_R/array_length_1d(other.Friends) )));
            var OY = other.y - 20 * (sin(degtorad( other.ff*other.Friends_R/array_length_1d(other.Friends) )));
            if( point_distance( OX, OY, x, y ) < 10 ) and (alarm[2]<0) {
                HP-=.5;
                if(HP <= 0) instance_destroy();
                alarm[2] = 4;
            }
        }
    }
}

if(bonus_marked) draw_sprite(spr_Item_173, 0, x, y-sprite_height-5);

// HP bar
if(((object_index == obj_Mimic) and (Fase > 0)) or ((object_index != obj_Mimic) and (image_alpha > 0))) {
	if(object_index != obj_ChallengeSlime) {
		draw_set_alpha(image_alpha);
	    draw_set_color(c_black);
	    draw_roundrect(bbox_left, bbox_bottom, bbox_right, bbox_bottom+3,0);
	    draw_set_color(c_red);
	    draw_roundrect(bbox_left, bbox_bottom+1, bbox_left + (bbox_right-bbox_left)*(HP/Max_HP), bbox_bottom+2,0);
		draw_set_alpha(1);
	}
}


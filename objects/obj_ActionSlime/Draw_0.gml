// Dibujar cuerpo
var Blend = image_blend;
var rand_x = 0;
var rand_y = 0;
if(alarm[11] > 0 ) Blend = c_gray; // Congelado
if(champion_xscale > 1) Blend = champion_color;
if(real(ID) == enemies.jumping_bomb) {
	if(actionTime/actionTimeMax > 0.8) {
		rand_x = random_range(-1,1);
		rand_y = random_range(-1,1);	
	}
}

// Dibujar cuerpo
draw_sprite_ext( sprite_index, image_index, x+rand_x, y+rand_y, champion_xscale * xscale * image_xscale, champion_yscale * yscale * image_yscale, image_angle, Blend, image_alpha );

// Action
if(actionTime > actionTimeMax/2) {
    var myAlpha = (actionTime-(actionTimeMax/2))/(actionTimeMax/2)
    d3d_set_fog(1, actionColor, 0, 0);
    draw_sprite_ext(sprite_index, image_index, x+rand_x, y+rand_y, champion_xscale * xscale * image_xscale, champion_yscale * yscale * image_yscale, image_angle, c_white, myAlpha);
    d3d_set_fog(0, c_white, 0, 0);
}

// Flash de golpe
if(alarm[2] > 0) {
    d3d_set_fog( 1, flashColor, 0, 0 );
    draw_sprite_ext( sprite_index, image_index, x+rand_x, y+rand_y, champion_xscale * xscale * image_xscale, champion_yscale * yscale * image_yscale, image_angle, Blend, image_alpha );
    d3d_set_fog( 0, c_white, 0, 0 );
}

action_inherited();

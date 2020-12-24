// Sigma COlors
dir = 0;
lastbonus = 0;
Bcolor1=$d800cd;   //change this colors to the value you want
Bcolor2=$0100fc;

// Efectos de ilmunacion
Particle_System = part_system_create();
Particle = part_type_create();
part_type_shape(Particle,pt_shape_square);
part_type_size(Particle,0.05,0.05,-0.00025,0);
part_type_scale(Particle,1,1);
part_type_color2(Particle,c_white,33448);
part_type_alpha1(Particle,1);
part_type_speed(Particle,0.5,0.5,0,0);
part_type_direction(Particle,0,359,random(2)-1,0);
part_type_gravity(Particle,0,270);
part_type_orientation(Particle,0,0,0,0,1);
part_type_blend(Particle,1);
part_type_life(Particle,100,300);
Particle_Emitter = part_emitter_create(Particle_System);
part_emitter_region(Particle_System,Particle_Emitter,0,room_width,0,room_height,0,1);
part_emitter_stream(Particle_System,Particle_Emitter,Particle,0);
Particle_Delay = true;
alarm[2] = 10 + random(20);

random_set_seed(global.UNIQUE_MAP_SEED + control_Dungeon.Dungeon_Seed[global.Posicion_i, global.Posicion_j]);
Alpha = min(0.1, RANDOM);
Alpha = 0;
Alpha2 = Alpha;

surf = -1;
Sname = part_system_create()
part_system_depth(Sname, 2000);
particle1 = part_type_create();
part_type_shape(particle1,pt_shape_square);
part_type_size(particle1,0.10,0.25,-0.01,0.01);
part_type_scale(particle1,5,5);
part_type_color3(particle1,3312,33023,16777215);
part_type_alpha1(particle1,1);
part_type_speed(particle1,1,1,0,0);
part_type_direction(particle1,90,90,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,60,60);
emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,-200,860,y-40,y,ps_shape_rectangle,1);
part_emitter_stream(Sname,emitter1,particle1,20);

/*
Sname2 = part_system_create()
particle2 = part_type_create();
part_system_depth(Sname2, 1000);
part_type_shape(particle2,pt_shape_square);
part_type_size(particle2,0.10,0.25,-0.01,0.01);
part_type_scale(particle2,5,5);
part_type_color3(particle2,3312,33023,16777215);
part_type_alpha1(particle2,1);
part_type_speed(particle2,1,1,0,0);
part_type_direction(particle2,270,270,0,0);
part_type_gravity(particle2,0,270);
part_type_orientation(particle2,0,0,0,0,1);
part_type_blend(particle2,1);
part_type_life(particle2,60,60);
emitter2 = part_emitter_create(Sname2);
part_emitter_region(Sname2,emitter2,-250,910,20,-40,ps_shape_rectangle,1);
part_emitter_stream(Sname2,emitter2,particle2,20);


/* */
/*  */

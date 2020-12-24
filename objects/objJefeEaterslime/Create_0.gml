action_inherited();
// Variables de image
image_speed = 0;

// ID
ID = control_Dungeon.Dungeon_Boss;

// Sonidos
Sonido_Muerte = get_boss(ID,3);

// Create body
var part = instance_create(x,y,objJefeBigsnakePart);  part.hitParent  = id; part.sprite_index  = sprJefeEaterslimeBody; part.Parent  = id;    part.Depth = -499;
var part2 = instance_create(x,y,objJefeBigsnakePart); part2.hitParent = id; part2.sprite_index = sprJefeEaterslimeBody; part2.Parent = part;  part.Depth = -498;
var part = instance_create(x,y,objJefeBigsnakePart);  part.hitParent  = id; part.sprite_index  = sprJefeEaterslimeBody; part.Parent  = part2; part2.Depth = -497;
var part2 = instance_create(x,y,objJefeBigsnakePart); part2.hitParent = id; part2.sprite_index = sprJefeEaterslimeBody; part2.Parent = part;  part.Depth = -496;
var part = instance_create(x,y,objJefeBigsnakePart);  part.hitParent  = id; part.sprite_index  = sprJefeEaterslimeBody; part.Parent  = part2; part2.Depth = -495;
var part2 = instance_create(x,y,objJefeBigsnakePart); part2.hitParent = id; part2.sprite_index = sprJefeEaterslimeBody; part2.Parent = part;  part2.image_index = 1; part.Depth = -494;

// Fisicas
Velocidad = 0;
Velocidad_H = 0;
Velocidad_V = 0;
Velocidad_Max = 4;
Aceleracion = 1;
Altura = 0;
xscale = 1;
yscale = 1;
damage = 1;
Angle = 45;
AngleSPD = 1.25;
SPD = 1.5;
hSpeed = 1.5;
vSpeed = 1.5;


// I.A
Knockback = 0;

// Variables de combate
Fuerza = get_boss(ID, 6); // Daño de ataque
Max_HP = get_boss(ID, 4);
HP = Max_HP;

// color variables
blood_colour = make_colour_rgb(160, 81, 12);
Color_Sangre = make_colour_rgb(160, 81, 12);

// phases
phase = 1;
phase_max = 2;
phase_timer = 0;
phase_timer_max = 5*room_speed;

// custom for this boss
spawn_timer = 0;
spawn_timer_max = 60;


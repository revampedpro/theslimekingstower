action_inherited();
// Efectos generales de enemigos
Sangrando = 0;
Envenenado = 0;
Sad_Hit = false;
flashColor = make_color_rgb(255,100,100);
Immune = false;
IsBoss = false;
noExp = false;
no_drops = false;
AI = -1;
aura_delay = 0;

// Crear un seguidor del enemigo
var Seguidor = instance_create( x, y, obj_Seguido_Por_Camara );
Seguidor.ID = id;

// Friends
Friends[0] = -1;
Friends_R = 0;
petAdded = false;

// Variables champ
champion_xscale = 1;
champion_yscale = 1;
champion_color = c_white;

// Bonus
marked = false;
bonus_marked = false;
hasSkull = false;

// Networking
netid = network_generate_id();
/// @description get_map(id,type)
/// @function get_map
/// @param id
/// @param type
function get_map(argument0, argument1) {

	// Declarar variables
	var Mapa_Nivel;
	var Suelo, Muro, Esquina, Agua, Puerta, Puerta_Jefe;
	var Enemigos, Jefes = "0", Nivel, SubNiveles = 1, Nombre;
	var Nivel_Enemigos, Max_Room_Number = 999;
	var Techo = spr_Techo_Alpha;

	// Devuelve informacion del mapa
	switch(argument0) {

	    case 1:
	        Nombre = "Alpha";
	        Suelo = sprFloor;
	        Muro = sprWall;
	        Esquina = sprWallCorner;
	        Agua = sprAgua;
	        Puerta = sprDoor;
	        Techo = spr_Techo_Alpha;
	        Puerta_Jefe = sprBossDoor;
	        Enemigos = generate_enemy_list(
				enemies.skeleton,
				enemies.bat,
				enemies.snake,
				enemies.clock_slime,
				enemies.green_charger_slime
			);
	        Enemigos_Max = 3;
	        Nivel_Enemigos = 0.5;
	        Distancia_Sala_Boss = 2;
	        break;

	    case 2:
	        Nombre = "Beta";
	        Suelo = sprFloor2;
	        Muro = sprWall2;
	        Esquina = sprWallCorner2;
	        Agua = sprAgua;
	        Puerta = sprDoor2;
	        Techo = spr_Techo_Beta;
	        Puerta_Jefe = sprBossDoor2;
			Enemigos = generate_enemy_list(
				enemies.skeleton,
				enemies.green_charger_slime,
				enemies.bat,
				enemies.stomp_slime,
				enemies.blue_charger_slime,
				enemies.medusa,
				enemies.blue_summoner_slime,
				enemies.snake,
				enemies.mother_slime,
				enemies.planetoid,
				enemies.bayo_slime,
				enemies.clock_slime,
				enemies.ghost_slime
			);
	        Enemigos_Max = 3;
	        Nivel_Enemigos = 1;
	        Distancia_Sala_Boss = 4;
	        break;

	    case 3:
	        Nombre = "Delta";
	        Suelo = sprFloor_Red;
	        Muro = sprWall3;
	        Esquina = sprWallCorner3;
	        Agua = sprMagma;
	        Puerta = sprDoor3;
	        Techo = spr_Techo_Delta;
	        Puerta_Jefe = sprBossDoor3;
			Enemigos = generate_enemy_list(
				enemies.skeleton,
				enemies.green_charger_slime,
				enemies.bat,
				enemies.stomp_slime,
				enemies.blue_charger_slime,
				enemies.medusa,
				enemies.blue_summoner_slime,
				enemies.mage_slime,
				enemies.hard_slime,
				enemies.tomahawk,
				enemies.mother_slime,
				enemies.planetoid,
				enemies.fire_slime,
				enemies.bayo_slime,
				enemies.clock_slime,
				enemies.shift_slime,
				enemies.flying_bomb_slime,
				enemies.ghost_slime,
				enemies.jumping_bomb
			);
	        Enemigos_Max = 4;
	        Nivel_Enemigos = 2;
	        Distancia_Sala_Boss = 5;
	        break;

	    case 4:
	        Nombre = "Epsilon";
	        Suelo = sprFloor3;
	        Muro = sprWall5;
	        Esquina = sprWallCorner5;
	        Agua = sprAcid;
	        Puerta = sprDoor5;
	        Techo = spr_Techo_Epsilon;
	        Puerta_Jefe = sprBossDoor5;
			Enemigos = generate_enemy_list(
				enemies.skeleton,
				enemies.green_charger_slime,
				enemies.bat,
				enemies.stomp_slime,
				enemies.blue_charger_slime,
				enemies.medusa,
				enemies.blue_summoner_slime,
				enemies.mage_slime,
				enemies.hard_slime,
				enemies.mitosis,
				enemies.tomahawk,
				enemies.mother_slime,
				enemies.planetoid,
				enemies.fire_slime,
				enemies.bayo_slime,
				enemies.clock_slime,
				enemies.bone_slime,
				enemies.bouncy_slime,
				enemies.shift_slime,
				enemies.flying_bomb_slime,
				enemies.ghost_slime,
				enemies.jumping_bomb
			);
	        Enemigos_Max = 4;
	        Nivel_Enemigos = 3;
	        Distancia_Sala_Boss = 6;
	        break;

	    case 5:
	        Nombre = "Gamma";
	        Suelo = sprFloor5;
	        Muro = sprWall5;
	        Esquina = sprWallCorner5;
	        Agua = sprAgua;
	        Puerta = sprDoor5;
	        Techo = spr_Techo_Epsilon;
	        Puerta_Jefe = sprBossDoor5;
			Enemigos = generate_enemy_list(
				enemies.skeleton,
				enemies.green_charger_slime,
				enemies.bat,
				enemies.stomp_slime,
				enemies.blue_charger_slime,
				enemies.medusa,
				enemies.blue_summoner_slime,
				enemies.mage_slime,
				enemies.hard_slime,
				enemies.mitosis,
				enemies.tomahawk,
				enemies.mother_slime,
				enemies.planetoid,
				enemies.fire_slime,
				enemies.ice_slime,
				enemies.bayo_slime,
				enemies.zombie_slime,
				enemies.bone_slime,
				enemies.bouncy_slime,
				enemies.shift_slime,
				enemies.flying_bomb_slime,
				enemies.magic_sword,
				enemies.fly_eye,
				enemies.jumping_bomb
			);
	        Enemigos_Max = 4;
	        Nivel_Enemigos = 4;
	        Distancia_Sala_Boss = 6;
	        break;

	    case 6:
	        Nombre = "Omega";
	        Suelo = sprFloor4;
	        Muro = sprWall4;
	        Esquina = sprWallCorner4;
	        Agua = sprMagma;
	        Puerta = sprDoor4;
	        Techo = spr_Techo_Omega;
	        Puerta_Jefe = sprBossDoor4;
			Enemigos = generate_enemy_list(
				enemies.mage_slime,
				enemies.hard_slime,
				enemies.shadow_spawn,
				enemies.shadow_spawn,
				enemies.mitosis,
				enemies.mitosis,
				enemies.tomahawk,
				enemies.mother_slime,
				enemies.fire_slime,
				enemies.ice_slime,
				enemies.bayo_slime,
				enemies.minibomb_slime,
				enemies.dino_slime,
				enemies.bone_slime,
				enemies.bouncy_slime,
				enemies.priest_slime,
				enemies.flying_bomb_slime,
				enemies.shift_slime,
				enemies.magic_sword,
				enemies.slime_jockey,
				enemies.fly_eye,
				enemies.ghost_slime,
				enemies.jumping_bomb
			);
	        Enemigos_Max = 5;
	        Nivel_Enemigos = 5;
	        Distancia_Sala_Boss = 7;
	        break;
        
	    case 7:
	        Nombre = "Pi";
	        Suelo = sprBFloor1;
	        Muro = sprBWall1;
	        Esquina = sprBWallCorner1;
	        Agua = sprAgua;
	        Puerta = sprBDoor1;
	        Techo = sprBRoof1;
	        Puerta_Jefe = sprBBossDoor1;
			Enemigos = generate_enemy_list(
				enemies.mage_slime,
				enemies.black_skeleton,
				enemies.tomahawk,
				enemies.mother_slime,
				enemies.summoner,
				enemies.summoned_eye,
				enemies.hard_tomahawk,
				enemies.rat_slime,
				enemies.fire_slime,
				enemies.ice_slime,
				enemies.mini_papasa,
				enemies.bayo_slime,
				enemies.dark_slime,
				enemies.kami_slime,
				enemies.zombie_slime,
				enemies.dino_slime,
				enemies.bone_slime,
				enemies.bouncy_slime,
				enemies.shift_slime,
				enemies.flying_bomb_slime,
				enemies.slime_jockey,
				enemies.ghost_slime,
				enemies.mummy_slime,
				enemies.jumping_bomb,
				enemies.samurai_slime
			);
	        Enemigos_Max = 2;
	        Nivel_Enemigos = 4;
	        Distancia_Sala_Boss = 7;
	        break;
        
	    case 8:
	        Nombre = "Ohm";
	        Suelo = sprBFloor2;
	        Muro = sprBWall2;
	        Esquina = sprBWallCorner2;
	        Agua = sprMagma;
	        Puerta = sprBDoor2;
	        Techo = sprBRoof2;
	        Puerta_Jefe = sprBBossDoor2;
			Enemigos = generate_enemy_list(
				enemies.black_skeleton,
				enemies.snake_hell,
				enemies.wizard_slime,
				enemies.tomahawk,
				enemies.mother_slime,
				enemies.summoner,
				enemies.hard_slime,
				enemies.summoned_eye,
				enemies.rat_slime,
				enemies.hard_tomahawk,
				enemies.fire_slime,
				enemies.ice_slime,
				enemies.dark_slime,
				enemies.minibomb_slime,
				enemies.zombie_slime,
				enemies.dino_slime,
				enemies.bone_slime,
				enemies.bouncy_slime,
				enemies.shift_slime,
				enemies.flying_bomb_slime,
				enemies.ghost_slime,
				enemies.skull_crawler,
				enemies.mummy_slime,
				enemies.jumping_bomb,
				enemies.samurai_slime
			);
	        Enemigos_Max = 3;
	        Nivel_Enemigos = 5;
	        Distancia_Sala_Boss = 8;
	        break;
        
	    case 9:
	        Nombre = "Tau";
	        Suelo = sprBFloor3;
	        Muro = sprBWall3;
	        Esquina = sprBWallCorner3;
	        Agua = sprMagma;
	        Puerta = sprBDoor3;
	        Techo = sprBRoof3;
	        Puerta_Jefe = sprBBossDoor3;
			Enemigos = generate_enemy_list(
				enemies.black_skeleton,
				enemies.snake_hell,
				enemies.hard_mother_slime,
				enemies.wizard_slime,
				enemies.tomahawk,
				enemies.mother_slime,
				enemies.summoner,
				enemies.rat_slime,
				enemies.hard_slime,
				enemies.fire_slime,
				enemies.ice_slime,
				enemies.mini_papasa,
				enemies.bigeye_slime,
				enemies.dark_slime,
				enemies.kami_slime,
				enemies.minibomb_slime,
				enemies.zombie_slime,
				enemies.dino_slime,
				enemies.bone_slime,
				enemies.red_summoner,
				enemies.priest_slime,
				enemies.shift_slime,
				enemies.flying_bomb_slime,
				enemies.slime_jockey,
				enemies.fly_eye,
				enemies.skull_crawler,
				enemies.mummy_slime,
				enemies.jumping_bomb,
				enemies.samurai_slime
			);
	        Enemigos_Max = 4;
	        Nivel_Enemigos = 6;
	        Distancia_Sala_Boss = 8;
	        break;
        
	    case 10:
	        Nombre = "Theta";
	        Suelo = sprBFloor4;
	        Muro = sprBWall4;
	        Esquina = sprBWallCorner4;
	        Agua = sprAcid;
	        Puerta = sprBDoor4;
	        Techo = sprBRoof4;
	        Puerta_Jefe = sprBBossDoor4;
			Enemigos = generate_enemy_list(
				enemies.black_skeleton,
				enemies.snake_hell,
				enemies.hard_mother_slime,
				enemies.wizard_slime,
				enemies.tomahawk,
				enemies.mother_slime,
				enemies.summoner,
				enemies.hard_slime,
				enemies.ice_slime,
				enemies.mini_papasa,
				enemies.bigeye_slime,
				enemies.dark_slime,
				enemies.minibomb_slime,
				enemies.red_summoner,
				enemies.priest_slime,
				enemies.magic_sword,
				enemies.slime_jockey,
				enemies.fly_eye,
				enemies.skull_crawler,
				enemies.mummy_slime,
				enemies.jumping_bomb,
				enemies.samurai_slime
			);
	        Enemigos_Max = 4;
	        Nivel_Enemigos = 6;
	        Distancia_Sala_Boss = 8;
	        break;
        
	    case 11:
	        Nombre = "Sigma";
	        Suelo = sprBFloor5;
	        Muro = sprBWall5;
	        Esquina = sprBWallCorner5;
	        Agua = sprAcid;
	        Puerta = sprBDoor5;
	        Techo = sprBRoof5;
	        Puerta_Jefe = sprBBossDoor5;
			Enemigos = generate_enemy_list(
				enemies.wizard_slime,
				enemies.snake_hell,
				enemies.hard_mother_slime,
				enemies.tomahawk,
				enemies.mother_slime,
				enemies.summoner,
				enemies.hard_slime,
				enemies.mini_papasa,
				enemies.bigeye_slime,
				enemies.dark_slime,
				enemies.red_summoner,
				enemies.priest_slime,
				enemies.magic_sword,
				enemies.slime_jockey,
				enemies.mummy_slime,
				enemies.samurai_slime
			);
	        Enemigos_Max = 5;
	        Nivel_Enemigos = 7;
	        Distancia_Sala_Boss = 8;
	        break;
     
	    case 12:
	        Nombre = "Portal";
	        Suelo = sprPortalFloor;
	        Muro = sprPortalWall;
	        Esquina = sprPortalWallCorner;
	        Agua = sprMagma;
	        Puerta = sprPortalDoor;
	        Techo = sprPortalRoof;
	        Puerta_Jefe = sprPortalBossDoor;
			Enemigos = generate_enemy_list(
				enemies.wizard_slime,
				enemies.tomahawk,
				enemies.mother_slime,
				enemies.summoner,
				enemies.hard_slime
			);
		
	        Enemigos_Max = 8;
	        Nivel_Enemigos = 5;
	        Distancia_Sala_Boss = 10;
	        break;
     
	    case 13:
	        Nombre = "...";
	        Suelo = sprVoidFloor;
	        Muro = sprVoidFloor;
	        Esquina = sprVoidFloor;
	        Agua = sprVoidFloor;
	        Puerta = sprVoidDoor;
	        Techo = sprVoidFloor;
	        Puerta_Jefe = sprVoidBossDoor;
			Enemigos = generate_enemy_list(
				enemies.wizard_slime,
				enemies.tomahawk,
				enemies.mother_slime,
				enemies.summoner,
				enemies.hard_slime,
				enemies.skull_crawler
			);
	        Enemigos_Max = 8;
	        Nivel_Enemigos = 6;
	        Distancia_Sala_Boss = 2;
	        break;
     
	    case 14:
	        Nombre = "Inside Mimic";
	        Suelo = sprBFloor5;
	        Muro = sprBWall5;
	        Esquina = sprBWallCorner5;
	        Agua = sprAgua;
	        Puerta = sprDoorTheOtherWay;
	        Techo = sprRoofTheOtherWay;
	        Puerta_Jefe = sprBossDoorTheOtherWay;
	        Enemigos = generate_enemy_list(
				enemies.coin_spider,
				enemies.coin_spider2,
				enemies.coin_spider3,
				enemies.coin_spider4,
				enemies.mimic,
				enemies.rat_slime
			);
	        Enemigos_Max = 10;
	        Nivel_Enemigos = 6;
	        Distancia_Sala_Boss = 10;
	        break;
     
	    case 15:
	        Nombre = "Skeleton's Lair";
	        Suelo = sprBFloor5;
	        Muro = sprBWall5;
	        Esquina = sprBWallCorner5;
	        Agua = sprAgua;
	        Puerta = sprDoorSkeletonLair;
	        Techo = sprRoofSkeletonLair;
	        Puerta_Jefe = sprBossDoorSkeletonLair;
	        Enemigos = generate_enemy_list(
				enemies.hard_slime,
				enemies.skeleton_mage,
				enemies.floatingskull_attract,
				enemies.floatingskull_damage,
				enemies.red_summoner,
				enemies.magic_sword,
				enemies.slime_jockey,
				enemies.skull_crawler
			);
	        Enemigos_Max = 6;
	        Nivel_Enemigos = 5;
	        Distancia_Sala_Boss = 8;
	        break;
     
	    case 16:
	        Nombre = "Avarice";
	        Suelo = sprBFloor5;
	        Muro = sprBWall5;
	        Esquina = sprBWallCorner5;
	        Agua = sprAgua;
	        Puerta = sprDoorAvarice;
	        Techo = sprRoofAvarice;
	        Puerta_Jefe = sprBossDoorAvarice;
	        Enemigos = generate_enemy_list(
				enemies.human
			);
	        Enemigos_Max = choose(1,1,1,1,1,1,2,2,2,2,3);
	        Nivel_Enemigos = 6;
	        Distancia_Sala_Boss = 1;
	        break;
        
	}

	// Devolver informacion pedida
	switch( argument1 ) {
	    case 0:  return Suelo;
	    case 1:  return Enemigos;
	    case 2:  return argument0;
	    case 3:  return SubNiveles+1;
	    case 4:  return Nombre;
	    case 5:  return Muro;
	    case 6:  return Esquina;
	    case 7:  return Agua;
	    case 8:  return Puerta;
	    case 9:  return Puerta_Jefe;
	    case 10: return Nivel_Enemigos;
	    case 11: return Enemigos_Max;
	    case 12: return Max_Room_Number+999;
	    case 13: return Distancia_Sala_Boss;
	    case 14: return Techo;
	}



}

/// @description get_character(id,type)
/// @function get_character
/// @param id
/// @param type
function get_character() {

	// Base de datos de personajes

	// Declarar variables temporales
	var ID;
	var Name = "";
	var Description = "";
	var Unlock = "";
	var Sprite = sprPlayerIdleDown;

	// Devuelve el dato pedido del enemigo dada su ID
	switch(real(argument[0])) {

	    case 0: // Hairry
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprPlayerIdleUp;
	            spr_Parado_Abajo                    = sprPlayerIdleDown;
	            spr_Parado_Izquierda                = sprPlayerIdleLeft;
	            spr_Parado_Derecha                  = sprPlayerIdleRight;
	            spr_Corriendo_Arriba                = sprPlayerRunUp;
	            spr_Corriendo_Abajo                 = sprPlayerRunDown;
	            spr_Corriendo_Izquierda             = sprPlayerRunLeft;
	            spr_Corriendo_Derecha               = sprPlayerRunRight;
	            spr_Disparando_Derecha              = sprPlayerShootRight;
	            spr_Disparando_Izquierda            = sprPlayerShootLeft;
	            spr_Disparando_Arriba               = sprPlayerShootUp;
	            spr_Disparando_Abajo                = sprPlayerShootDown;
	            spr_Disparando_Caminando_Derecha    = sprPlayerShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprPlayerShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprPlayerShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprPlayerShootDownWalk;
	            spr_Get_Item                        = sprPlayerItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	            if(global.GAME_COMPLETED) {
	                var Starting_Items = ds_list_create();
	                    ds_list_add(Starting_Items,268);
	                return Starting_Items;
	            }
	            return -1;
	        } else {
	            Sprite = sprPlayerIdleDown;
	            Name = lang(6000);
	            Description = lang(6001);
	            Unlock = lang(6002);
	        }
	    break;

	    case 1: // Jade
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprJadeIdleUp;
	            spr_Parado_Abajo                    = sprJadeIdleDown;
	            spr_Parado_Izquierda                = sprJadeIdleLeft;
	            spr_Parado_Derecha                  = sprJadeIdleRight;
	            spr_Corriendo_Arriba                = sprJadeRunUp;
	            spr_Corriendo_Abajo                 = sprJadeRunDown;
	            spr_Corriendo_Izquierda             = sprJadeRunLeft;
	            spr_Corriendo_Derecha               = sprJadeRunRight;
	            spr_Disparando_Derecha              = sprJadeShootRight;
	            spr_Disparando_Izquierda            = sprJadeShootLeft;
	            spr_Disparando_Arriba               = sprJadeShootUp;
	            spr_Disparando_Abajo                = sprJadeShootDown;
	            spr_Disparando_Caminando_Derecha    = sprJadeShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprJadeShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprJadeShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprJadeShootDownWalk;
	            spr_Get_Item                        = sprJadeItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 50;
	            var Starting_Items = ds_list_create();
	                ds_list_add(Starting_Items,277);
	            return Starting_Items;
	        } else {
	            Sprite = sprJadeIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;

	    case 2: // The Collector
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprCollectorIdleUp;
	            spr_Parado_Abajo                    = sprCollectorIdleDown;
	            spr_Parado_Izquierda                = sprCollectorIdleLeft;
	            spr_Parado_Derecha                  = sprCollectorIdleRight;
	            spr_Corriendo_Arriba                = sprCollectorRunUp;
	            spr_Corriendo_Abajo                 = sprCollectorRunDown;
	            spr_Corriendo_Izquierda             = sprCollectorRunLeft;
	            spr_Corriendo_Derecha               = sprCollectorRunRight;
	            spr_Disparando_Derecha              = sprCollectorShootRight;
	            spr_Disparando_Izquierda            = sprCollectorShootLeft;
	            spr_Disparando_Arriba               = sprCollectorShootUp;
	            spr_Disparando_Abajo                = sprCollectorShootDown;
	            spr_Disparando_Caminando_Derecha    = sprCollectorShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprCollectorShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprCollectorShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprCollectorShootDownWalk;
	            spr_Get_Item                        = sprCollectorItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	            var Starting_Items = ds_list_create();
	            ds_list_add(Starting_Items,501);
	            return Starting_Items;
	        } else {
	            Sprite = sprCollectorIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;

	    case 3: // Igneous
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprIgneousIdleUp;
	            spr_Parado_Abajo                    = sprIgneousIdleDown;
	            spr_Parado_Izquierda                = sprIgneousIdleLeft;
	            spr_Parado_Derecha                  = sprIgneousIdleRight;
	            spr_Corriendo_Arriba                = sprIgneousRunUp;
	            spr_Corriendo_Abajo                 = sprIgneousRunDown;
	            spr_Corriendo_Izquierda             = sprIgneousRunLeft;
	            spr_Corriendo_Derecha               = sprIgneousRunRight;
	            spr_Disparando_Derecha              = sprIgneousShootRight;
	            spr_Disparando_Izquierda            = sprIgneousShootLeft;
	            spr_Disparando_Arriba               = sprIgneousShootUp;
	            spr_Disparando_Abajo                = sprIgneousShootDown;
	            spr_Disparando_Caminando_Derecha    = sprIgneousShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprIgneousShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprIgneousShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprIgneousShootDownWalk;
	            spr_Get_Item                        = sprIgneousItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	            if(instance_exists(control_Dungeon)) {
	                control_Dungeon.player_chan_shoot = false;
	                control_Dungeon.player_recharge = true;
	                can_attack = false;
	                can_recharge = true;
	                use_item_on_attack = true;
	            }
	            var Starting_Items = ds_list_create();
	            ds_list_add(Starting_Items,89);
	            return Starting_Items;
	        } else {
	            Sprite = sprIgneousIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;

	    case 4: // Void
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprVoidIdleUp;
	            spr_Parado_Abajo                    = sprVoidIdleDown;
	            spr_Parado_Izquierda                = sprVoidIdleLeft;
	            spr_Parado_Derecha                  = sprVoidIdleRight;
	            spr_Corriendo_Arriba                = sprVoidRunUp;
	            spr_Corriendo_Abajo                 = sprVoidRunDown;
	            spr_Corriendo_Izquierda             = sprVoidRunLeft;
	            spr_Corriendo_Derecha               = sprVoidRunRight;
	            spr_Disparando_Derecha              = sprVoidShootRight;
	            spr_Disparando_Izquierda            = sprVoidShootLeft;
	            spr_Disparando_Arriba               = sprVoidShootUp;
	            spr_Disparando_Abajo                = sprVoidShootDown;
	            spr_Disparando_Caminando_Derecha    = sprVoidShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprVoidShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprVoidShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprVoidShootDownWalk;
	            spr_Get_Item                        = sprVoidItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	            var Starting_Items = ds_list_create();
	            ds_list_add(Starting_Items,500);
	            return Starting_Items;
	        } else {
	            Sprite = sprVoidIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;

	    case 5: // Maiyan
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprMaiyanIdleUp;
	            spr_Parado_Abajo                    = sprMaiyanIdleDown;
	            spr_Parado_Izquierda                = sprMaiyanIdleLeft;
	            spr_Parado_Derecha                  = sprMaiyanIdleRight;
	            spr_Corriendo_Arriba                = sprMaiyanRunUp;
	            spr_Corriendo_Abajo                 = sprMaiyanRunDown;
	            spr_Corriendo_Izquierda             = sprMaiyanRunLeft;
	            spr_Corriendo_Derecha               = sprMaiyanRunRight;
	            spr_Disparando_Derecha              = sprMaiyanShootRight;
	            spr_Disparando_Izquierda            = sprMaiyanShootLeft;
	            spr_Disparando_Arriba               = sprMaiyanShootUp;
	            spr_Disparando_Abajo                = sprMaiyanShootDown;
	            spr_Disparando_Caminando_Derecha    = sprMaiyanShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprMaiyanShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprMaiyanShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprMaiyanShootDownWalk;
	            spr_Get_Item                        = sprMaiyanItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	            if(instance_exists(obj_Jugador)) {
	                obj_Jugador.Penetracion_Disparo = 5;
	                obj_Jugador.Bullet_Size = 4;
	                obj_Jugador.Velocidad_Disparo = 2;
	                obj_Jugador.Caida_Disparo = 600;
	                obj_Jugador.Cadencia_Disparo = 0.5;
	                obj_Jugador.Fuerza += 9;
	            }
	            return -1;
	        } else {
	            Sprite = sprMaiyanIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;

	    case 6: // Midas
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprMidasIdleUp;
	            spr_Parado_Abajo                    = sprMidasIdleDown;
	            spr_Parado_Izquierda                = sprMidasIdleLeft;
	            spr_Parado_Derecha                  = sprMidasIdleRight;
	            spr_Corriendo_Arriba                = sprMidasRunUp;
	            spr_Corriendo_Abajo                 = sprMidasRunDown;
	            spr_Corriendo_Izquierda             = sprMidasRunLeft;
	            spr_Corriendo_Derecha               = sprMidasRunRight;
	            spr_Disparando_Derecha              = sprMidasShootRight;
	            spr_Disparando_Izquierda            = sprMidasShootLeft;
	            spr_Disparando_Arriba               = sprMidasShootUp;
	            spr_Disparando_Abajo                = sprMidasShootDown;
	            spr_Disparando_Caminando_Derecha    = sprMidasShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprMidasShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprMidasShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprMidasShootDownWalk;
	            spr_Get_Item                        = sprMidasItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	            if(instance_exists(obj_Jugador)) {
	                obj_Jugador.HP_Max = 0;
	                obj_Jugador.HP = 0;
	                repeat(16) {
	                        switch(obj_Jugador.HP_Extra_Q[obj_Jugador.HP_Extra_S]) {
	                        case 0:
	                            obj_Jugador.HP_Extra[obj_Jugador.HP_Extra_S] = obj_GoldHeart;
	                            obj_Jugador.HP_Extra_Q[obj_Jugador.HP_Extra_S] = 2;
	                        break;
                        
	                        case 1:
	                            obj_Jugador.HP_Extra_Q[obj_Jugador.HP_Extra_S] = 2;
	                            obj_Jugador.HP_Extra_S++;
	                            obj_Jugador.HP_Extra[obj_Jugador.HP_Extra_S] = obj_GoldHeart;
	                            obj_Jugador.HP_Extra_Q[obj_Jugador.HP_Extra_S] = 1;
	                        break;
                        
	                        case 2:
	                            obj_Jugador.HP_Extra_S++;
	                            obj_Jugador.HP_Extra[obj_Jugador.HP_Extra_S] = obj_GoldHeart;
	                            obj_Jugador.HP_Extra_Q[obj_Jugador.HP_Extra_S] = 2;
	                        break;
                    
	                    }
	                }
	            }
	            return -1;
	        } else {
	            Sprite = sprMidasIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;

	    case 7: // Mind
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprMindIdleUp;
	            spr_Parado_Abajo                    = sprMindIdleDown;
	            spr_Parado_Izquierda                = sprMindIdleLeft;
	            spr_Parado_Derecha                  = sprMindIdleRight;
	            spr_Corriendo_Arriba                = sprMindRunUp;
	            spr_Corriendo_Abajo                 = sprMindRunDown;
	            spr_Corriendo_Izquierda             = sprMindRunLeft;
	            spr_Corriendo_Derecha               = sprMindRunRight;
	            spr_Disparando_Derecha              = sprMindShootRight;
	            spr_Disparando_Izquierda            = sprMindShootLeft;
	            spr_Disparando_Arriba               = sprMindShootUp;
	            spr_Disparando_Abajo                = sprMindShootDown;
	            spr_Disparando_Caminando_Derecha    = sprMindShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprMindShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprMindShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprMindShootDownWalk;
	            spr_Get_Item                        = sprMindItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	            if(instance_exists(obj_Jugador)) {
	                var Starting_Items = ds_list_create();
	                    ds_list_add(Starting_Items,get_random_item_from_pool("passive"));
	                    ds_list_add(Starting_Items,get_random_item_from_pool("passive"));
	                    ds_list_add(Starting_Items,get_random_item_from_pool("passive"));
	                return Starting_Items;
	            }
	        } else {
	            Sprite = sprMindIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;

	    case 8: // Dots
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprDotsIdleUp;
	            spr_Parado_Abajo                    = sprDotsIdleDown;
	            spr_Parado_Izquierda                = sprDotsIdleLeft;
	            spr_Parado_Derecha                  = sprDotsIdleRight;
	            spr_Corriendo_Arriba                = sprDotsRunUp;
	            spr_Corriendo_Abajo                 = sprDotsRunDown;
	            spr_Corriendo_Izquierda             = sprDotsRunLeft;
	            spr_Corriendo_Derecha               = sprDotsRunRight;
	            spr_Disparando_Derecha              = sprDotsShootRight;
	            spr_Disparando_Izquierda            = sprDotsShootLeft;
	            spr_Disparando_Arriba               = sprDotsShootUp;
	            spr_Disparando_Abajo                = sprDotsShootDown;
	            spr_Disparando_Caminando_Derecha    = sprDotsShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprDotsShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprDotsShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprDotsShootDownWalk;
	            spr_Get_Item                        = sprDotsItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	            Delay_Invencibilidad = 1;
	            var Starting_Items = ds_list_create();
	                ds_list_add(Starting_Items,149);
	            return Starting_Items;
	        } else {
	            Sprite = sprDotsIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;

	    case 9: // Prayer
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprPrayerIdleUp;
	            spr_Parado_Abajo                    = sprPrayerIdleDown;
	            spr_Parado_Izquierda                = sprPrayerIdleLeft;
	            spr_Parado_Derecha                  = sprPrayerIdleRight;
	            spr_Corriendo_Arriba                = sprPrayerRunUp;
	            spr_Corriendo_Abajo                 = sprPrayerRunDown;
	            spr_Corriendo_Izquierda             = sprPrayerRunLeft;
	            spr_Corriendo_Derecha               = sprPrayerRunRight;
	            spr_Disparando_Derecha              = sprPrayerShootRight;
	            spr_Disparando_Izquierda            = sprPrayerShootLeft;
	            spr_Disparando_Arriba               = sprPrayerShootUp;
	            spr_Disparando_Abajo                = sprPrayerShootDown;
	            spr_Disparando_Caminando_Derecha    = sprPrayerShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprPrayerShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprPrayerShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprPrayerShootDownWalk;
	            spr_Get_Item                        = sprPrayerItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	            var Starting_Items = ds_list_create();
	                ds_list_add(Starting_Items,505);
	            return Starting_Items;
	        } else {
	            Sprite = sprPrayerIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;
    
	    case 10: // Flesh
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprFleshIdleUp;
	            spr_Parado_Abajo                    = sprFleshIdleDown;
	            spr_Parado_Izquierda                = sprFleshIdleLeft;
	            spr_Parado_Derecha                  = sprFleshIdleRight;
	            spr_Corriendo_Arriba                = sprFleshRunUp;
	            spr_Corriendo_Abajo                 = sprFleshRunDown;
	            spr_Corriendo_Izquierda             = sprFleshRunLeft;
	            spr_Corriendo_Derecha               = sprFleshRunRight;
	            spr_Disparando_Derecha              = sprFleshShootRight;
	            spr_Disparando_Izquierda            = sprFleshShootLeft;
	            spr_Disparando_Arriba               = sprFleshShootUp;
	            spr_Disparando_Abajo                = sprFleshShootDown;
	            spr_Disparando_Caminando_Derecha    = sprFleshShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprFleshShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprFleshShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprFleshShootDownWalk;
	            spr_Get_Item                        = sprFleshItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	            if(instance_exists(control_Dungeon)) {
	                control_Dungeon.player_chan_shoot = false;
	                can_attack = false;
	            }
	            var Starting_Items = ds_list_create();
	                ds_list_add(Starting_Items,256);
	            return Starting_Items;
	            return -1;
	        } else {
	            Sprite = sprFleshIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;

	    case 11: // Slimer
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprSlimerIdleUp;
	            spr_Parado_Abajo                    = sprSlimerIdleDown;
	            spr_Parado_Izquierda                = sprSlimerIdleLeft;
	            spr_Parado_Derecha                  = sprSlimerIdleRight;
	            spr_Corriendo_Arriba                = sprSlimerRunUp;
	            spr_Corriendo_Abajo                 = sprSlimerRunDown;
	            spr_Corriendo_Izquierda             = sprSlimerRunLeft;
	            spr_Corriendo_Derecha               = sprSlimerRunRight;
	            spr_Disparando_Derecha              = sprSlimerShootRight;
	            spr_Disparando_Izquierda            = sprSlimerShootLeft;
	            spr_Disparando_Arriba               = sprSlimerShootUp;
	            spr_Disparando_Abajo                = sprSlimerShootDown;
	            spr_Disparando_Caminando_Derecha    = sprSlimerShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprSlimerShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprSlimerShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprSlimerShootDownWalk;
	            spr_Get_Item                        = sprSlimerItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	            if(instance_exists(obj_Jugador)) {
	                obj_Jugador.HP_Max = 32;
	                obj_Jugador.HP = 32;
				}
	            var Starting_Items = ds_list_create();
	                ds_list_add(Starting_Items,19,26,6);
	            return Starting_Items;
	        } else {
	            Sprite = sprSlimerIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;

	    case 12: // Bones
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprBonesIdleUp;
	            spr_Parado_Abajo                    = sprBonesIdleDown;
	            spr_Parado_Izquierda                = sprBonesIdleLeft;
	            spr_Parado_Derecha                  = sprBonesIdleRight;
	            spr_Corriendo_Arriba                = sprBonesRunUp;
	            spr_Corriendo_Abajo                 = sprBonesRunDown;
	            spr_Corriendo_Izquierda             = sprBonesRunLeft;
	            spr_Corriendo_Derecha               = sprBonesRunRight;
	            spr_Disparando_Derecha              = sprBonesShootRight;
	            spr_Disparando_Izquierda            = sprBonesShootLeft;
	            spr_Disparando_Arriba               = sprBonesShootUp;
	            spr_Disparando_Abajo                = sprBonesShootDown;
	            spr_Disparando_Caminando_Derecha    = sprBonesShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprBonesShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprBonesShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprBonesShootDownWalk;
	            spr_Get_Item                        = sprBonesItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	            var Starting_Items = ds_list_create();
	                ds_list_add(Starting_Items,115);
	            return Starting_Items;
	        } else {
	            Sprite = sprBonesIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;

	    case 13: // Trapped
	        if(argument_count == 1) {
	            spr_Parado_Arriba                   = sprMimicIdleUp;
	            spr_Parado_Abajo                    = sprMimicIdleDown;
	            spr_Parado_Izquierda                = sprMimicIdleLeft;
	            spr_Parado_Derecha                  = sprMimicIdleRight;
	            spr_Corriendo_Arriba                = sprMimicRunUp;
	            spr_Corriendo_Abajo                 = sprMimicRunDown;
	            spr_Corriendo_Izquierda             = sprMimicRunLeft;
	            spr_Corriendo_Derecha               = sprMimicRunRight;
	            spr_Disparando_Derecha              = sprMimicShootRight;
	            spr_Disparando_Izquierda            = sprMimicShootLeft;
	            spr_Disparando_Arriba               = sprMimicShootUp;
	            spr_Disparando_Abajo                = sprMimicShootDown;
	            spr_Disparando_Caminando_Derecha    = sprMimicShootRightWalk;
	            spr_Disparando_Caminando_Izquierda  = sprMimicShootLeftWalk;
	            spr_Disparando_Caminando_Arriba     = sprMimicShootUpWalk;
	            spr_Disparando_Caminando_Abajo      = sprMimicShootDownWalk;
	            spr_Get_Item                        = sprMimicItem;
				if(object_index == obj_EnemyPlayer) return true; // If an enemy is loading this, exit here.
	            keys = 1;
	            bombs = 1;
	        } else {
	            Sprite = sprMimicIdleDown;
	            Name = lang(6000+(argument[0]*3));
	            Description = lang(6001+(argument[0]*3));
	            Unlock = lang(6002+(argument[0]*3));
	        }
	    break;
        
	}


	// Devolver data
	if(argument_count > 1) {
	    switch(argument[1]) {
	        case "sprite":       return Sprite; break;
	        case "name":         return Name; break;
	        case "description":  return Description; break;
	        case "unlock":       return Unlock; break;
	    }
	}

	return -1;



}

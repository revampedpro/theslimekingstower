/// @description lang_spanish(id)
/// @function lang_spanish
/// @param id
function lang_spanish_del(argument0) {

	// Devuelve el texto traducido al espaÃ±ol
	switch( argument0 ) {

	    // Transicion jefe
	    case 0: return "Jugador";
    
	    // Menu principal
	    case 1: return "JUGAR"; break;   
	    case 2: return "RANKING"; break;
	    case 3: return "OBJETOS"; break;
	    case 4: return "OPCIONES"; break;
	    case 5: return "VOLVER"; break;
    
	    // Perfil
	    case 6: return "Introduce tu nickname"; break;
	    case 7: return "Nombre no valido"; break;
	    case 8: return "BIENVENIDO"; break;
	    case 9: return "Toca para elegir nombre"; break;
    
	    // Ranking
	    case 10: return "JUGADOR"; break;
	    case 11: return "NIVEL"; break;
	    case 12: return "ENEMIGOS"; break;
	    case 13: return "TIEMPO"; break;
	    case 14: return "CARGANDO..."; break;
    
	    // Biblioteca
	    case 15: return "ITEMS"; break;
	    case 16: return "OBTENIDOS"; break;
	    case 17: return "PAGINA"; break;
	    case 18: return "TIEMPO"; break;
    
	    // Opciones
	    case 19: return "ENEMIGOS"; break;
	    case 20: return "JUGADOR"; break;
	    case 21: return "HABITACION"; break;
	    case 22: return "CAMARA"; break;
	    case 23: return "VARIABLES"; break;
	    case 24: return "FIJOS"; break;
	    case 25: return "CONTROL"; break;
	    case 26: return "OFF"; break;
	    case 27: return "ON"; break;
	    case 28: return "SONIDO"; break;
    
	    // Ingame
	    case 29: return spr_Overlay_Spanish; break;
    
	    // UI
	    case 30: return "SALUD"; break;
	    case 31: return "MONEDAS"; break;
	    case 32: return "ITEM"; break;
	    case 33: return "SALUD JEFE"; break;
    
	    // Ingame Menu
	    case 34: return "CONTINUAR"; break;
	    case 35: return "REINICIAR"; break;
	    case 36: return "SALIR"; break;
    
	    // Cofre Eleccion
	    case 37: return "Pesima eleccion"; break;
	    case 38: return "Monedas -99"; break;
	    case 39: return "Mala eleccion"; break;
	    case 40: return "Monedas -5"; break;
	    case 41: return "Buena eleccion"; break;
	    case 42: return "Monedas +5"; break;
    
	    // Game Over
	    case 43: return "ESTADISTICAS"; break;
	    case 44: return "MIS OBJETOS"; break;
	    case 45: return "JUGAR"; break;
	    case 46: return "VOLVER"; break;
	    case 47: return "TIEMPO TOTAL DE JUEGO: "; break;
	    case 48: return "ENEMIGOS ELIMINADOS: "; break;
	    case 49: return "ULTIMO PISO: "; break;
	    case 50: return "MONEDAS RECOGIDAS: "; break;
	    case 51: return "SALUD OBTENIDA: "; break;
    
	    // Ranking Tiempos
	    case 52: return "HOY"; break;
	    case 53: return "ESTE MES"; break;
	    case 54: return "12 MESES"; break;
	    case 55: return "SIEMPRE"; break;
	    case 56: return "AVENTURA"; break;
	    case 57: return "INFINITO"; break;
	    case 58: return "ARCADE"; break;
    
	    // Quality
	    case 59: return "BAJO"; break;
	    case 60: return "MEDIO"; break;
	    case 61: return "ALTO"; break;
	    case 62: return "CALIDAD"; break;
	    case 63: return "AUTOGUARDAR"; break;
    
	    // Varios
	    case 70: return "CONTINUAR"; break;
	    case 71: return "COMPRAR"; break;
	    case 72: return "COMPRA ESTE ITEM PARA METERLO EN EL ARMARIO INICIAL"; break;
	    case 73: return "DESBLOQUEAR"; break;
	    case 74: return "OBTEN INFORMACION DE ESTE ITEM"; break;
    
	    // Modos de juego
	    case 75: return "AVENTURA"; break;   
	    case 76: return "INFINITO"; break;   
	    case 77: return "ARCADE"; break;  
	    case 78: return "NORMAL"; break;  
	    case 79: return "DIFICIL"; break;  
	    case 80: return "LOCURA"; break;   
	    case 81: return "DIFICULTAD"; break;  
    
	    // Codigos promocionales
	    case 82: return "Introduce tu código promocional."; break;
	    case 83: return "Necesitas conexión a internet para usar esta función."; break;
	    case 84: return "El código no es válido o ya ha sido usado."; break; 
	    case 85: return "Has recibido 250 monedas de oro."; break; 
	    case 86: return "Has recibido 500 monedas de oro."; break; 
	    case 87: return "Has recibido 1000 monedas de oro."; break; 
	    case 88: return "Los anuncios han sido desactivados."; break; 
	    // case 89 is used !!
    
	    // Arcade
	    case 90: return "RONDA"; break;
	    case 91: return "NIVEL"; break;
    
	    // News
	    case 92: return "NOVEDADES"; break;
	    case 93: return "CARGANDO"; break;
	    case 94: return "SOLTAR ITEM"; break;
	    case 95: return "SOLTAR"; break;
	    case 96: return "SIN ITEMS"; break;
	    case 97: return "ESCAPAR"; break;
	    case 98: return "MASCOTA"; break;
	    case 99: return "VISIBLE"; break;
	    case 89: return "INVISIBLE"; break;
    
	    // Pets
	    case 3000: return "MEJORAR"; break;
	    case 3001: return "ALCANZA EL NIVEL 5 PARA DESBLOQUEAR LA HABILIDAD"; break;
	    case 3002: return "BLOQUEADO"; break;
	    case 3003: return "DERROTA A ESTE ENEMIGO PARA DESBLOQUEARLO"; break;
	    case 3004: return "NIVEL MAX"; break;
	    case 3005: return "MASCOTAS"; break;
	    case 3006: return "PULSA DOS VECES PARA EQUIPAR"; break;
	    case 3007: return "RESTANTE"; break;
    
	    // Pet Skills
	    case 3008: return "Velocidad x1.5"; break;
	    case 3009: return "Fuerza x1.25"; break;
	    case 3010: return "Knockback x1.5"; break;
	    case 3011: return "1% Probabilidad de disparar una bala muy poderosa"; break;
	    case 3012: return "10% Probabilidad de teletransportarte al ser golpeado"; break;
	    case 3013: return "25% Probabilidad de teletransportarte al ser golpeado"; break;
	    case 3014: return "10% Probabilidad de evitar ser golpeado"; break;
	    case 3015: return "5% Probabilidad de evitar ser golpeado"; break;
	    case 3016: return "1% Probabilidad de recuperar toda la salud al matar a un enemigo"; break;
	    case 3017: return "5% Probabilidad de recuperar salud al matar a un enemigo"; break;
	    case 3018: return "50% Probabilidad de evitar ser golpeado por pinchos"; break;
	    case 3019: return "Las habitaciones de salud son mas comunes"; break;
	    case 3020: return "Los jarrones nunca invocaran arañas"; break;
	    case 3021: return "Las habitaciones de reto son mas comunes"; break;
	    case 3022: return "Las tiendas son mas comunes"; break;
	    case 3023: return "10% Probabilidad de soltar un doble al ser golpeado"; break;
	    case 3024: return "Mitosis no se reproducira al morir"; break;
	    case 3025: return "50% Probabilidad de evitar ser golpeado por fuego"; break;
	    case 3026: return "25% Probabilidad de que Mother Slime no se divida"; break;
	    case 3027: return "20% Probabilidad de evitar ser golpeado"; break;
	    case 3028: return "Los esqueletos invocados tienen 1 punto de vida"; break;
	    case 3029: return "El knockback ya no te afecta"; break;
	    case 3030: return "Todos los enemigos tienen +10% de probabilidad de soltar oro"; break;
	    case 3031: return "Knockback x2"; break;
	    case 3032: return "Fuerza x1.5"; break;
	    case 3033: return "Velocidad x2"; break;
	    case 3034: return "10% Probabilidad de golpear a todos los enemigos cuando un enemigo muere"; break;
	    case 3035: return "5% Probabilidad de invocar a un Green Slime en lugar de un enemigo normal"; break;
	    case 3036: return "El fuego ya no te afecta"; break;
	    case 3037: return "Los enemigos tienen una probablidad de soltar bombas al morir"; break;
	    case 3038: return "75% Probablidad de evitar ser golpeado por pinchos"; break;
	    case 3039: return "Los items usables se recargan lentamente"; break;
	    case 3040: return "El aura magica de Aqua Slime ya no funciona"; break;
	    case 3041: return "El aura magica de Glow Slime ya no funciona"; break;
	    case 3042: return "Todas las habitaciones estan iluminadas"; break;
	    case 3043: return "Aparece oro en el lugar de las medusas"; break;
	    case 3044: return "Aparecen corazones en el lugar de las medusas"; break;
	    case 3045: return "25% Probabilidad de invocar un doble al ser golpeado"; break;
	    case 3046: return "Te teletransportas al ser golpeado"; break;
	    case 3047: return "0.1% Probabilidad de matar instantaneamente a cualquier enemigo"; break;
	    case 3048: return "Aumenta tu fuerza en 1 cada minuto"; break;
	    case 3049: return "Los enemigos bloques ya no aparecen"; break;
	    case 3050: return "Los enemigos jarrones ya no aparecen"; break;
	    case 3051: return "Los enemigos tienen una probabilidad de soltar oro al ser golpeados cuerpo a cuerpo"; break;

	    // Endless Dungeon
	    case 4000: return "Nivel de la mazmorra: "; break;
	    case 4001: return "Recorre la torre para subirla de nivel"; break;
	    case 4002: return "Esta funcion esta bloqueada, juega la modo Aventura para desbloquearla"; break;
	    case 4003: return "Completa una patida con objetos diferentes cada dia#y obten 200 monedas!"; break;
	    case 4004: return "Partida diaria completada.#Vuelve cada dia para una configuracion diferente!"; break;
	    case 4005: return "Sotano desbloqueado"; break;
    
	    // Extras
	    case 5000: return "TORRE"; break;
	    case 5001: return "SOTANO"; break;
	    case 5002: return "ESCUCHAS UN RUIDO EN LA ENTRADA"; break;
	    case 5003: return "Has recibido 50 monedas."; break;
    
	    // Items
	    case 100: return "Salud Extra"; break; // Nombre
	    case 200: return "Salud+"; break; // Descripcion Rapida
	    case 300: return "Aumenta la salud en 1 corazon"; break; // Descripcion Detallada
    
	    case 101: return "Poder Infernal"; break; // Nombre
	    case 201: return "Ataque+"; break; // Descripcion Rapida
	    case 301: return "Aumenta el ataque en 1 punto"; break; // Descripcion Detallada
    
	    case 102: return "Amuleto de vida"; break; // Nombre
	    case 202: return "Tiempo de invencibilidad+"; break; // Descripcion Rapida
	    case 302: return "Aumenta el tiempo de invencibilidad entre golpes"; break; // Descripcion Detallada
    
	    case 103: return "Pescado Delicioso"; break; // Nombre
	    case 203: return "Salud+"; break; // Descripcion Rapida
	    case 303: return "Aumenta la salud en 1 corazon"; break; // Descripcion Detallada
    
	    case 104: return "Pocion de velocidad"; break; // Nombre
	    case 204: return "Velocidad+"; break; // Descripcion Rapida
	    case 304: return "Aumenta la velocidad en 0.25"; break; // Descripcion Detallada
    
	    case 105: return "Queso"; break; // Nombre
	    case 205: return "Salud completamente recuperada"; break; // Descripcion Rapida
	    case 305: return "Restaura toda la salud"; break; // Descripcion Detallada
    
	    case 106: return "Mapa del tesoro"; break; // Nombre
	    case 206: return "Mazmorra revelada"; break; // Descripcion Rapida
	    case 306: return "Revela el mapa"; break; // Descripcion Detallada
    
	    case 107: return "Tercer Ojo"; break; // Nombre
	    case 207: return "Ataca de espaldas"; break; // Descripcion Rapida
	    case 307: return "Dispara tambien hacia atrÃ¡s"; break; // Descripcion Detallada
    
	    case 108: return "Escudo Magico"; break; // Nombre
	    case 208: return "Protege del primer golpe recibido"; break; // Descripcion Rapida
	    case 308: return "Absorbe el primer golpe recibido en una sala"; break; // Descripcion Detallada
    
	    case 109: return "Municion Rocosa"; break; // Nombre
	    case 209: return "Empuje+"; break; // Descripcion Rapida
	    case 309: return "Aumenta el empuje de los proyectiles"; break; // Descripcion Detallada
    
	    case 110: return "Municion Gigante"; break; // Nombre
	    case 210: return "Ataque++ Cadencia-- Radio+"; break; // Descripcion Rapida
	    case 310: return "Aumenta mucho el ataque pero baja mucho la cadencia"; break; // Descripcion Detallada
    
	    case 111: return "Marca de perforacion"; break; // Nombre
	    case 211: return "Municion perforante"; break; // Descripcion Rapida
	    case 311: return "Las balas atraviesan al primer enemigo"; break; // Descripcion Detallada
    
	    case 112: return "Disparo Angulo"; break; // Nombre
	    case 212: return "La velocidad cambia la direccion de las balas"; break; // Descripcion Rapida
	    case 312: return "Las balas adhieren la velocidad del jugador"; break; // Descripcion Detallada
    
	    case 113: return "Filo Envenenado"; break; // Nombre
	    case 213: return "Envenena enemigos"; break; // Descripcion Rapida
	    case 313: return "Las balas envenan al enemigo causandole heridas a lo largo del tiempo"; break; // Descripcion Detallada
    
	    case 114: return "Filo Afilado"; break; // Nombre
	    case 214: return "Hazlos sangrar"; break; // Descripcion Rapida
	    case 314: return "Las balas hacen sangrar al enemigo causandole heridas a lo largo del tiempo"; break; // Descripcion Detallada
    
	    case 115: return "Carne Deliciosa"; break; // Nombre
	    case 215: return "Salud++"; break; // Descripcion Rapida
	    case 315: return "Aumenta la salud en 2 corazones"; break; // Descripcion Detallada
    
	    case 116: return "Ancas de rana"; break; // Nombre
	    case 216: return "Salud+"; break; // Descripcion Rapida
	    case 316: return "Aumenta la salud en 1 corazon"; break; // Descripcion Detallada
    
	    case 117: return "Hoja Comestible"; break; // Nombre
	    case 217: return "Salud+"; break; // Descripcion Rapida
	    case 317: return "Aumenta la salud en 1 corazon"; break; // Descripcion Detallada
    
	    case 118: return "Piel Magica"; break; // Nombre
	    case 218: return "Ataque de espinas+"; break; // Descripcion Rapida
	    case 318: return "Devuelves el golpe cuando te golpean"; break; // Descripcion Detallada
    
	    case 119: return "Piel Dura"; break; // Nombre
	    case 219: return "Ataque de espinas+"; break; // Descripcion Rapida
	    case 319: return "Devuelves el golpe cuando te golpean"; break; // Descripcion Detallada
    
	    case 120: return "Fuego Azul"; break; // Nombre
	    case 220: return "Ataque rapido y debil"; break; // Descripcion Rapida
	    case 320: return "Aumenta mucho la velocidad de ataque pero reduce mucho el rango"; break; // Descripcion Detallada
    
	    case 121: return "Balas de goma"; break; // Nombre
	    case 221: return "Boing, boing."; break; // Descripcion Rapida
	    case 321: return "Las balas rebotan en las paredes hasta 3 veces"; break; // Descripcion Detallada
    
	    case 122: return "Necropapiro"; break; // Nombre
	    case 222: return "Golpea a todos los enemigos de la habitacion"; break; // Descripcion Rapida
	    case 322: return "Hace 10 puntos de golpe a todos los enemigos de la sala"; break; // Descripcion Detallada
    
	    case 123: return "Alma de guardabosques"; break; // Nombre
	    case 223: return "Ataque- Rango++"; break; // Descripcion Rapida
	    case 323: return "Aumenta el rango de las balas"; break; // Descripcion Detallada
    
	    case 124: return "Tornado Enfurecido"; break; // Nombre
	    case 224: return "Empuje+ Rango+"; break; // Descripcion Rapida
	    case 324: return "Aumenta el knockback y el rango de las balas"; break; // Descripcion Detallada
    
	    case 125: return "Pocion Rellenable"; break; // Nombre
	    case 225: return "Curacion multiuso"; break; // Descripcion Rapida
	    case 325: return "Recupera 1 corazon"; break; // Descripcion Detallada
    
	    case 126: return "Ala de murcielago"; break; // Nombre
	    case 226: return "Roba salud a los enemigos"; break; // Descripcion Rapida
	    case 326: return "Matar cierta cantidad de enemigos recupera salud"; break; // Descripcion Detallada
    
	    case 127: return "Reloj del tiempo"; break; // Nombre
	    case 227: return "Para el tiempo, durante un tiempo"; break; // Descripcion Rapida
	    case 327: return "Paraliza a los enemigos durante un corto espacio de tiempo"; break; // Descripcion Detallada
    
	    case 128: return "Contacto Helado"; break; // Nombre
	    case 228: return "Congela enemigos al contacto"; break; // Descripcion Rapida
	    case 328: return "Los enemigos se congelan al golpearte"; break; // Descripcion Detallada
    
	    case 129: return "Municion Congelada"; break; // Nombre
	    case 229: return "Congela enemigos al golpearlos"; break; // Descripcion Rapida
	    case 329: return "Las balas tienen una probabilidad de congelar al enemigo"; break; // Descripcion Detallada
    
	    case 130: return "Viento en espiral"; break; // Nombre
	    case 230: return "Soplare y soplare"; break; // Descripcion Rapida
	    case 330: return "Las balas tienen efecto"; break; // Descripcion Detallada 
    
	    case 131: return "Papiro de sustitucion"; break; // Nombre
	    case 231: return "Cambia a los enemigos"; break; // Descripcion Rapida
	    case 331: return "Elimina a los enemigos de la sala y luego invoca a otros aleatorios"; break; // Descripcion Detallada
    
	    case 132: return "El D6"; break; // Nombre
	    case 232: return "Cambia el contenido de los cofres. Totalmente original."; break; // Descripcion Rapida
	    case 332: return "Cambia todos los objetos de los cofres de la sala"; break; // Descripcion Detallada
    
	    case 133: return "A Fondo"; break; // Nombre
	    case 233: return "Dispara en todas las direcciones. Cadencia-"; break; // Descripcion Rapida
	    case 333: return "Dispara en todas las direcciones, reduce la cadencia de disparo"; break; // Descripcion Detallada
    
	    case 134: return "Bolsa Codiciosa"; break; // Nombre
	    case 234: return "Duplica el valor de las monedas"; break; // Descripcion Rapida
	    case 334: return "Las monedas recogidas duplican su valor"; break; // Descripcion Detallada
    
	    case 135: return "Botas de hierro"; break; // Nombre
	    case 235: return "Niega el empuje"; break; // Descripcion Rapida
	    case 335: return "Los enemigos no pueden empujarte"; break; // Descripcion Detallada
    
	    case 136: return "Elixir de velocidad"; break; // Nombre
	    case 236: return "Velocidad+"; break; // Descripcion Rapida
	    case 336: return "Aumenta la velocidad en 0.5"; break; // Descripcion Detallada
    
	    case 137: return "Botas Sonicas"; break; // Nombre
	    case 237: return "Velocidad++"; break; // Descripcion Rapida
	    case 337: return "Aumenta la velocidad en 0.5"; break; // Descripcion Detallada
    
	    case 138: return "Los tambores"; break; // Nombre
	    case 238: return "Y ahora, los tambores"; break; // Descripcion Rapida
	    case 338: return "Lanza a los enemigos lejos del jugador"; break; // Descripcion Detallada
    
	    case 139: return "Guantes Estaticos"; break; // Nombre
	    case 239: return "Cargas de dolor"; break; // Descripcion Rapida
	    case 339: return "Recibir un golpe carga los items usables"; break; // Descripcion Detallada
    
	    case 140: return "Piel de oro"; break; // Nombre
	    case 240: return "Hacerse rico duele"; break; // Descripcion Rapida
	    case 340: return "Al recibir un golpe hay una probabilidad de liberar monedas de oro"; break; // Descripcion Detallada
    
	    case 141: return "Gafas con swag"; break; // Nombre
	    case 241: return "Mas dinero, mas poder"; break; // Descripcion Rapida
	    case 341: return "Aumenta en 1 el ataque por cada 10 monedas"; break; // Descripcion Detallada
    
	    case 142: return "Area sostenida"; break; // Nombre
	    case 242: return "Sostenme la municion"; break; // Descripcion Rapida
	    case 342: return "Paraliza las balas durante un breve periodo de tiempo mientras disparas"; break; // Descripcion Detallada
    
	    case 143: return "Ganzua"; break; // Nombre
	    case 243: return "Abre puertas"; break; // Descripcion Rapida
	    case 343: return "Abre las puertas de la sala"; break; // Descripcion Detallada
    
	    case 144: return "Esmeralda del no-caos"; break; // Nombre
	    case 244: return "+15 oro"; break; // Descripcion Rapida
	    case 344: return "Te da 15 monedas de oro"; break; // Descripcion Detallada
    
	    case 145: return "Anillo Grande"; break; // Nombre
	    case 245: return "Radio de la municion+"; break; // Descripcion Rapida
	    case 345: return "Aumenta el radio de las balas"; break; // Descripcion Detallada
    
	    case 146: return "Vara de recolocacion"; break; // Nombre
	    case 246: return "Teletransporte aleatorio"; break; // Descripcion Rapida
	    case 346: return "Te teletransporta a un lugar seguro tras recibir un golpe"; break; // Descripcion Detallada
    
	    case 147: return "Vara de fuego"; break; // Nombre
	    case 247: return "FUEGO!"; break; // Descripcion Rapida
	    case 347: return "Crea fuego a tu alrededor"; break; // Descripcion Detallada
    
	    case 148: return "Lazaro"; break; // Nombre
	    case 248: return "Segunda oportunidad"; break; // Descripcion Rapida
	    case 348: return "Revives la primera vez que mueres"; break; // Descripcion Detallada
    
	    case 149: return "Elegido de dios"; break; // Nombre
	    case 249: return "Poca velocidad, mucho poder"; break; // Descripcion Rapida
	    case 349: return "Reduce la velocidad pero potencia mucho el ataque"; break; // Descripcion Detallada
    
	    case 150: return "Pocion de fuerza"; break; // Nombre
	    case 250: return "Ataque+"; break; // Descripcion Rapida
	    case 350: return "Aumenta el ataque en 1 punto"; break; // Descripcion Detallada
    
	    case 151: return "Municion Explosiva"; break; // Nombre
	    case 251: return "Las balas golpean en area"; break; // Descripcion Rapida
	    case 351: return "Las balas tambien golpean a los enemigos cercanos al colisionar"; break; // Descripcion Detallada
    
	    case 152: return "Municion Buscadora"; break; // Nombre
	    case 252: return "Las balas pueden seguir a los enemigos"; break; // Descripcion Rapida
	    case 352: return "Las balas tienen una probabilidad de seguir al enemigo mas cercano"; break; // Descripcion Detallada
    
	    case 153: return "Pico de diamante"; break; // Nombre
	    case 253: return "Rompe los pinchoscraft"; break; // Descripcion Rapida
	    case 353: return "Las balas pueden romper los pinchos"; break; // Descripcion Detallada
    
	    case 154: return "Ala de angel"; break; // Nombre
	    case 254: return "Fly me to the next room"; break; // Descripcion Rapida
	    case 354: return "Avanza hasta el siguiente piso"; break; // Descripcion Detallada
    
	    case 155: return "Botas Duras"; break; // Nombre
	    case 255: return "Pinchos? Que son los pinchos?"; break; // Descripcion Rapida
	    case 355: return "Los pinchos ya no te causan heridas al pasar por encima de ellos"; break; // Descripcion Detallada
    
	    case 156: return "Pico de oro"; break; // Nombre
	    case 256: return "Mejor que romper madera con las manos"; break; // Descripcion Rapida
	    case 356: return "Rompe todos los pinchos que haya en la habitacion"; break; // Descripcion Detallada
    
	    case 157: return "Alma de guerrero"; break; // Nombre
	    case 257: return "Ataque+"; break; // Descripcion Rapida
	    case 357: return "Aumenta el ataque en 1 punto"; break; // Descripcion Detallada
    
	    case 158: return "Alma de mago"; break; // Nombre
	    case 258: return "Ataque+"; break; // Descripcion Rapida
	    case 358: return "Aumenta el ataque en 1 punto"; break; // Descripcion Detallada
    
	    case 159: return "Filo Inifinito"; break; // Nombre
	    case 259: return "Ataque+"; break; // Descripcion Rapida
	    case 359: return "Aumenta el ataque en 1 punto"; break; // Descripcion Detallada
    
	    case 160: return "Iman"; break; // Nombre
	    case 260: return "Atrae cosas brillantes"; break; // Descripcion Rapida
	    case 360: return "Atrae los objetos coleccionables dentro de un radio"; break; // Descripcion Detallada
    
	    case 161: return "Mascara Triste"; break; // Nombre
	    case 261: return "Entristece a los enemigos"; break; // Descripcion Rapida
	    case 361: return "Reduce la vida de los enemigos cercanos una vez por habitacion"; break; // Descripcion Detallada
    
	    case 162: return "Ultimo esfuerzo"; break; // Nombre
	    case 262: return "PANICO!"; break; // Descripcion Rapida
	    case 362: return "Aumenta tu fuerza mucho cuando solo te queda medio corazon"; break; // Descripcion Detallada
    
	    case 163: return "Maniqui"; break; // Nombre
	    case 263: return "Se parece a mi"; break; // Descripcion Rapida
	    case 363: return "Crea una copia de ti para atraer a los enemigos"; break; // Descripcion Detallada
    
	    case 164: return "Marca de punteria"; break; // Nombre
	    case 264: return "Descripcion no.64"; break; // Descripcion Rapida
	    case 364: return "Permite apuntar mejor la direccion de las balas"; break; // Descripcion Detallada
    
	     case 165: return "Bonificacion Aleatoria"; break; // Nombre
	     case 2651: return "Salud+"; break; // Descripcion Rapida
	     case 2652: return "Ataque+"; break; // Descripcion Rapida
	     case 2653: return "Velocidad+"; break; // Descripcion Rapida
	     case 365: return "Otorga una bonificacion aleatoria para salud, ataque o velocidad"; break; // Descripcion Detallada
     
	     case 166: return "Orbe de fuego"; break; // Nombre
	     case 266: return "Din din din din"; break; // Descripcion Rapida
	     case 366: return "Una orbe de fuego vuela alrededor del jugador atacando a los enemigos"; break; // Descripcion Detallada
     
	     case 167: return "Daga magica"; break; // Nombre
	     case 267: return "Legend -espera- daga!"; break; // Descripcion Rapida
	     case 367: return "Una espada vuela alrededor del jugador atacando a los enemigos"; break; // Descripcion Detallada
     
	     case 168: return "Angel guardian"; break; // Nombre
	     case 268: return "Puede volar, en circulos"; break; // Descripcion Rapida
	     case 368: return "Un angel guardian vuela alrededor del jugador atacando a los enemigos"; break; // Descripcion Detallada
     
	     case 169: return "Patines de hielo"; break; // Nombre
	     case 269: return "I can walk on ice I can fly"; break; // Descripcion Rapida
	     case 369: return "Permite al jugador moverse sobre hielo sin deslizarse"; break; // Descripcion Detallada
     
	     case 170: return "Disco de luz"; break; // Nombre
	     case 270: return "La luz te consumira!"; break; // Descripcion Rapida
	     case 370: return "Un disco de luz vuela alrededor del jugador atacando a los enemigos"; break; // Descripcion Detallada
     
	     case 171: return "Biblia Sagrada"; break; // Nombre
	     case 271: return "Ofrece la otra mejilla"; break; // Descripcion Rapida
	     case 371: return "Mata a todos los enemigos de la sala a costa de tu salud"; break; // Descripcion Detallada
     
	     case 172: return "Libro de guerra"; break; // Nombre
	     case 272: return "POR ESPARTO!"; break; // Descripcion Rapida
	     case 372: return "Aumenta temporalmente tu ataque para la habitacion en la que te encuentres"; break; // Descripcion Detallada
     
	     case 173: return "Libro de amistad"; break; // Nombre
	     case 273: return "Vamos, todos juntos!"; break; // Descripcion Rapida
	     case 373: return "Llama a un amigo aleatorio para que te proteja"; break; // Descripcion Detallada
     
	     case 174: return "Libro de ASPD"; break; // Nombre
	     case 274: return "Quien dijo que 190 fuese el maximo?"; break; // Descripcion Rapida
	     case 374: return "Aumenta tu cadencia de disparo para la habitacion en la que te encuentres"; break; // Descripcion Detallada
     
	     case 175: return "Libro de asalto"; break; // Nombre
	     case 275: return "MANOS ARRIBA!"; break; // Descripcion Rapida
	     case 375: return "Dispara una rafaga de balas en todos los sentidos"; break; // Descripcion Detallada
     
	     case 176: return "El Mago"; break; // Nombre
	     case 276: return "Ni siquiera estoy aqui"; break; // Descripcion Rapida
	     case 376: return "Teletransporta al jugador a una ubicacion aleatoria dentro de la habitacion"; break; // Descripcion Detallada
     
	     case 177: return "Strike"; break; // Nombre
	     case 277: return "Asura"; break; // Descripcion Rapida
	     case 377: return "La proxima bala que dispares sera gigante y con una fuerza descomunal"; break; // Descripcion Detallada
     
	     case 178: return "Rebajas Veraniegas"; break; // Nombre
	     case 278: return "Descuento en las tiendas"; break; // Descripcion Rapida
	     case 378: return "Reduce los precios de las tiendas a la mitad"; break; // Descripcion Detallada
     
	     case 179: return "Toque Venenoso"; break; // Nombre
	     case 279: return "No me toques!"; break; // Descripcion Rapida
	     case 379: return "Envenan a los enemigos que te golpean"; break; // Descripcion Detallada
     
	     case 180: return "Mano del ladron"; break; // Nombre
	     case 280: return "Lo mio pa mi"; break; // Descripcion Rapida
	     case 380: return "Reduce los precios de la tienda en la que te encuentres a 0"; break; // Descripcion Detallada
     
	     case 181: return "Hostilidad"; break; // Nombre
	     case 281: return "Los enemigos se odian"; break; // Descripcion Rapida
	     case 381: return "Los enemigos se hieren unos a otros si se tocan"; break; // Descripcion Detallada
     
	     case 182: return "Decorador de mazmorras"; break; // Nombre
	     case 282: return "Tan bonito que te llena de salud"; break; // Descripcion Rapida
	     case 382: return "Romper una vasija te regenera un punto de salud"; break; // Descripcion Detallada
     
	     case 183: return "Rellenador de cofres"; break; // Nombre
	     case 283: return "No puedo ver el fondo"; break; // Descripcion Rapida
	     case 383: return "Rellena los cofres de la habitacion despues de haberlos cogido"; break; // Descripcion Detallada
     
	     case 184: return "Municion Magnetica"; break; // Nombre
	     case 284: return "BRRZR"; break; // Descripcion Rapida
	     case 384: return "Los enemigos atraen a las balas"; break; // Descripcion Detallada
     
	     case 185: return "Fuego Interior"; break; // Nombre
	     case 285: return "Contacto fuegril"; break; // Descripcion Rapida
	     case 385: return "Liberas llamas cuando te golpean"; break; // Descripcion Detallada
     
	     case 186: return "Disparo Pulsado"; break; // Nombre
	     case 286: return "Solo para gente inquieta"; break; // Descripcion Rapida
	     case 386: return "Las balas no se mueven pero generan un campo de fuerza"; break; // Descripcion Detallada
     
	     case 187: return "Lasers"; break; // Nombre
	     case 287: return "PEW PEW"; break; // Descripcion Rapida
	     case 387: return "Disparas lasers que son mas rapidos que las balas normales"; break; // Descripcion Detallada
     
	     case 188: return "Shurikens"; break; // Nombre
	     case 288: return "Te sientes como un ninja"; break; // Descripcion Rapida
	     case 388: return "Disparas shurikens que son mas potentes que las balas normales"; break; // Descripcion Detallada
     
	     case 189: return "Illumineye"; break; // Nombre
	     case 289: return "Anillos de fuego"; break; // Descripcion Rapida
	     case 389: return "Lanzas anillos de fuego que atraviesan a los enemigos"; break; // Descripcion Detallada
     
	     case 190: return "Alma de rata"; break; // Nombre
	     case 290: return "Ahora cabrias en una ratonera"; break; // Descripcion Rapida
	     case 390: return "Hace al jugador diminuto"; break; // Descripcion Detallada
     
	     case 191: return "Fuerza del viento"; break; // Nombre
	     case 291: return "Mas lejos, mas poder"; break; // Descripcion Rapida
	     case 391: return "Las balas ganan fuerza mientras mas tiempo viajen"; break; // Descripcion Detallada
     
	     case 192: return "Tunica de fuego"; break; // Nombre
	     case 292: return "Inmune al fuego"; break; // Descripcion Rapida
	     case 392: return "La tunica te protege de cualquier ataque de fuego"; break; // Descripcion Detallada
     
	     case 193: return "Espadas Danzantes"; break; // Nombre
	     case 293: return "Apunta y dispara"; break; // Descripcion Rapida
	     case 393: return "Aumenta mucho la fuerza del disparo pero hace impredecible su direccion"; break; // Descripcion Detallada
     
	     case 194: return "Escudo Fantasmal"; break; // Nombre
	     case 294: return "Carga y absorbe"; break; // Descripcion Rapida
	     case 394: return "Recibir un golpe carga un escudo que anulara el siguiente golpe"; break; // Descripcion Detallada
     
	     case 195: return "Armadura Dorada"; break; // Nombre
	     case 295: return "Me duele mas a mi que a vosotros"; break; // Descripcion Rapida
	     case 395: return "Los golpes que recibes son mas duros pero hieren mucho a los enemigos"; break; // Descripcion Detallada
     
	     case 196: return "Cinto de explorador"; break; // Nombre
	     case 296: return "Explorar es mas facil si no hay enemigos"; break; // Descripcion Rapida
	     case 396: return "Aumenta la velocidad cuando no hay enemigos en la sala"; break; // Descripcion Detallada
     
	     case 197: return "Pilar de fuego"; break; // Nombre
	     case 297: return "La azotea esta que arde"; break; // Descripcion Rapida
	     case 397: return "Invoca llamas en cuatro direcciones alrededor del jugador"; break; // Descripcion Detallada
     
	     case 198: return "Matajefes"; break; // Nombre
	     case 298: return "Mas fuerza contra jefes"; break; // Descripcion Rapida
	     case 398: return "Duplica el ataque del jugador en la sala del jefe"; break; // Descripcion Detallada
     
	     case 199: return "Codicia"; break; // Nombre
	     case 299: return "Solo quiero irme de tiendas"; break; // Descripcion Rapida
	     case 399: return "La sala especial siempre sera una tienda"; break; // Descripcion Detallada
     
	     case 400: return "Minishots"; break; // Nombre
	     case 500: return "Disparos indecisos"; break; // Descripcion Rapida
	     case 600: return "Las balas cambian de direccion despues de un tiempo"; break; // Descripcion Detallada
     
	     case 401: return "Adeadnalina"; break; // Nombre
	     case 501: return "Adrenalina a muerte"; break; // Descripcion Rapida
	     case 601: return "Las balas aumentan su ataque en la sala por cada enemigo eliminado"; break; // Descripcion Detallada
     
	     case 402: return "Matagigantes"; break; // Nombre
	     case 502: return "Recompensa matarlos"; break; // Descripcion Rapida
	     case 602: return "Te curas un corazon despues de eliminar a un jefe"; break; // Descripcion Detallada
     
	     case 403: return "Riposte"; break; // Nombre
	     case 503: return "Contra Ataque"; break; // Descripcion Rapida
	     case 603: return "Autodisparas cuando eres golpeado"; break; // Descripcion Detallada
     
	     case 404: return "Libro de Recoleccion"; break; // Nombre
	     case 504: return "La mejor tecnica de grindeo"; break; // Descripcion Rapida
	     case 604: return "Invocas enemigos en la sala"; break; // Descripcion Detallada
     
	     case 405: return "Pacto de vida"; break; // Nombre
	     case 505: return "Vida VS Poder"; break; // Descripcion Rapida
	     case 605: return "Pierdes salud a cambio de aumentar tu poder de ataque"; break; // Descripcion Detallada
     
	     case 406: return "Amor Puro"; break; // Nombre
	     case 506: return "Esto levantaria el animo a cualquiera"; break; // Descripcion Rapida
	     case 606: return "Invocas corazones en la sala"; break; // Descripcion Detallada
     
	     case 407: return "La Orbe"; break; // Nombre
	     case 507: return "360 grados"; break; // Descripcion Rapida
	     case 607: return "Las balas explotan en mas balas que forman un circulo"; break; // Descripcion Detallada
     
	     case 408: return "Odia Slimes"; break; // Nombre
	     case 508: return "Pero no iba de esto el juego?"; break; // Descripcion Rapida
	     case 608: return "Destruye todos los slimes no jefes de la sala"; break; // Descripcion Detallada
     
	     case 409: return "Demasiado Oro"; break; // Nombre
	     case 509: return "Tanto como para lanzarlo"; break; // Descripcion Rapida
	     case 609: return "Lanza monedas y potencia mucho tus ataques"; break; // Descripcion Detallada
     
	     case 410: return "Abracadabra"; break; // Nombre
	     case 510: return "????"; break; // Descripcion Rapida
	     case 610: return "Utiliza un objeto aleatorio"; break; // Descripcion Detallada
    
	    case 411: return "Geocentrico"; break; // Nombre
	     case 511: return "Esto funciona bien? Fuerza ++"; break; // Descripcion Rapida
	     case 611: return "Aumenta mucho tu fuerza, las balas se crean a tu alrededor y viajan hacia ti"; break; // Descripcion Detallada
     
	     case 412: return "Muro de emergencia"; break; // Nombre
	     case 512: return "No puedes pasar!"; break; // Descripcion Rapida
	     case 612: return "Crea 4 vasijas a tu alrededor"; break; // Descripcion Detallada
     
	     case 413: return "Cargador de Mazmorra"; break; // Nombre
	     case 513: return "HYA!HYAAA!"; break; // Descripcion Rapida
	     case 613: return "Romper vasijas carga tu item usable"; break; // Descripcion Detallada
     
	     case 414: return "Orbe estatica"; break; // Nombre
	     case 514: return "Vaya cosa mas rara"; break; // Descripcion Rapida
	     case 614: return "Las balas vuelan en circulo, puedes controlarlas con el stick derecho"; break; // Descripcion Detallada
     
	     case 415: return "Ricochet"; break; // Nombre
	     case 515: return "Parece un pinball"; break; // Descripcion Rapida
	     case 615: return "Las balas viajan a enemigos cercanos despues de golpearlos"; break; // Descripcion Detallada
     
	     case 416: return "Boomerang"; break; // Nombre
	     case 516: return "Esto es seguro?"; break; // Descripcion Rapida
	     case 616: return "Las balas vuelven a ti"; break; // Descripcion Detallada
     
	     case 417: return "Explosion de balas"; break; // Nombre
	     case 517: return "CATAPUM!"; break; // Descripcion Rapida
	     case 617: return "Los enemigos liberan una explosion de balas al morir"; break; // Descripcion Detallada
     
	     case 418: return "Vortice totemico"; break; // Nombre
	     case 518: return "Saluda a mi amiguito"; break; // Descripcion Rapida
	     case 618: return "Crea un totem en el suelo que dispara"; break; // Descripcion Detallada
     
	     case 419: return "Balas fantasma"; break; // Nombre
	     case 519: return "BOO-arns"; break; // Descripcion Rapida
	     case 619: return "Las balas atraviesan obstaculos, pero no enemigos"; break; // Descripcion Detallada
     
	     case 420: return "Balas gravitacionales"; break; // Nombre
	     case 520: return "Parecen moscas"; break; // Descripcion Rapida
	     case 620: return "Las balas se adhieren al enemigo y dan vueltas a su alrededor hiriendo a otros"; break; // Descripcion Detallada
     
	     case 421: return "Balas gravitacionales V2.1.85"; break; // Nombre
	     case 521: return "Moscas para todos!"; break; // Descripcion Rapida
	     case 621: return "Invocas balas que se adhieren a todos los enemigos de la sala, hiriendo a los de alredeor"; break; // Descripcion Detallada
     
	     case 422: return "Rayo laser"; break; // Nombre
	     case 522: return "Traedme un gato!"; break; // Descripcion Rapida
	     case 622: return "Disparas un laser"; break; // Descripcion Detallada
     
	     case 423: return "Amplifire"; break; // Nombre
	     case 523: return "Luz, mas luz, MAS LUZ, oooh..."; break; // Descripcion Rapida
	     case 623: return "Ilumina la habitacion por completo"; break; // Descripcion Detallada
     
	     case 424: return "Shoot Da Whoop"; break; // Nombre
	     case 524: return "AIMAFAIRINMALEISAAA!"; break; // Descripcion Rapida
	     case 624: return "Disparas un laser que da vueltas"; break; // Descripcion Detallada
     
	     case 425: return "Ejercito enano"; break; // Nombre
	     case 525: return "*Sonido de gritos*"; break; // Descripcion Rapida
	     case 625: return "Disparas enanos que chillan y hacen hieren a los enemigos"; break; // Descripcion Detallada
     
	     case 426: return "Ojo de Cthulhu rojo"; break; // Nombre
	     case 526: return "Alguien tiene colirio?"; break; // Descripcion Rapida
	     case 626: return "Te persigue un ojo que golpea a los enemigos"; break; // Descripcion Detallada
     
	     case 427: return "Ojo de Cthulhu azul"; break; // Nombre
	     case 527: return "Vision de rayos... Laser!"; break; // Descripcion Rapida
	     case 627: return "Te persigue un ojo que dispara lasers"; break; // Descripcion Detallada
     
	     case 428: return "Ojo de Cthulhu verde"; break; // Nombre
	     case 528: return "No son lentillas"; break; // Descripcion Rapida
	     case 628: return "Te persigue un ojo que dispara ondas a corto alcance"; break; // Descripcion Detallada
     
	     case 429: return "Ojo de Cthulhu amarillo"; break; // Nombre
	     case 529: return "Que ojazos tengo"; break; // Descripcion Rapida
	     case 629: return "Te persigue un ojo mas fuerte pero mas lento"; break; // Descripcion Detallada
    
	    case 430: return "Boton del panico"; break; // Nombre
	    case 530: return "Rapido, haz algo!"; break; // Descripcion Rapida
	    case 630: return "Cuando te golpea un enemigo y la barra de carga de tu item usable esta por la mitad, o mas, se activa"; break; // Descripcion Detallada
     
	    case 431: return "Cacharro de inmortalidad"; break; // Nombre
	    case 531: return "No podeis conmigo"; break; // Descripcion Rapida
	    case 631: return "Te hace invencible durante 5 segundos"; break; // Descripcion Detallada
     
	    case 432: return "Lentilla negra"; break; // Nombre
	    case 532: return "A mi la oscuridad!"; break; // Descripcion Rapida
	    case 632: return "Lo vuelve todo oscuro pero aumenta mucho tu daño"; break; // Descripcion Detallada
     
	    case 433: return "Abajo!"; break; // Nombre
	    case 533: return "Boton de apagado pulsado"; break; // Descripcion Rapida
	    case 633: return "Los interruptores y pinchos siempre estan bajados"; break; // Descripcion Detallada
     
	    case 434: return "Brazaletes dorados"; break; // Nombre
	    case 534: return "Las armaduras son para flojos"; break; // Descripcion Rapida
	    case 634: return "Todos los items que apareceran en los cofres del tesoro y tiendas seran de daño"; break; // Descripcion Detallada
     
	    case 435: return "Zona del caos"; break; // Nombre
	    case 535: return "Estas en mi barrio colega"; break; // Descripcion Rapida
	    case 635: return "Crea un circulo en el suelo que mientras permanezcas en el seras mas fuerte"; break; // Descripcion Detallada
     
	    case 436: return "Seta rara"; break; // Nombre
	    case 536: return "No se si deberia comerla"; break; // Descripcion Rapida
	    case 636: return "Te hace invencible durante un tiempo, hieres a los enemigos que tocas y trae musica! "; break; // Descripcion Detallada
     
	    case 437: return "Disparos coloridos"; break; // Nombre
	    case 537: return "Fuerza+, Preciosura++++"; break; // Descripcion Rapida
	    case 637: return "Las balas se vuelven de colores y hacen mas daño"; break; // Descripcion Detallada
     
	    case 438: return "Mono Cell"; break; // Nombre
	    case 538: return "Pero que mago soy"; break; // Descripcion Rapida
	    case 638: return "Transforma a todos los enemigos que no sean jefes en vasijas"; break; // Descripcion Detallada
     
	    case 439: return "Furia del borracho"; break; // Nombre
	    case 539: return "Deja de moverte!"; break; // Descripcion Rapida
	    case 639: return "Invierte los controles y aumenta el daño"; break; // Descripcion Detallada
     
	    case 440: return "Destructor de barreras"; break; // Nombre
	    case 540: return "Nada puede detenerme"; break; // Descripcion Rapida
	    case 640: return "Elimina todos los bloques de la sala"; break; // Descripcion Detallada

	    case 441: return "Bombas"; break; // Nombre
	    case 541: return "Al fin!"; break; // Descripcion Rapida
	    case 641: return "Suelta una bomba en el lugar del jugador"; break; // Descripcion Detallada
    
	    case 442: return "Lluvia de bombas"; break; // Nombre
	    case 542: return "A cubierto!"; break; // Descripcion Rapida
	    case 642: return "Invoca bombas en la sala"; break; // Descripcion Detallada
    
	    case 443: return "Lanzabombas I"; break; // Nombre
	    case 543: return "Bombas para todos"; break; // Descripcion Rapida
	    case 643: return "Lanza bombas en 4 direcciones"; break; // Descripcion Detallada
    
	    case 444: return "Lanzabombas II"; break; // Nombre
	    case 544: return "Esto es peligroso"; break; // Descripcion Rapida
	    case 644: return "Dispara bombas en vez de balas normales"; break; // Descripcion Detallada
    
	    case 445: return "Fakir"; break; // Nombre
	    case 545: return "El truco esta en la garganta"; break; // Descripcion Rapida
	    case 645: return "Dispara espadas en vez de balas normales. Fuerza+1"; break; // Descripcion Detallada
    
	    case 446: return "Llamada de Cthulhu"; break; // Nombre
	    case 546: return "Que vienen"; break; // Descripcion Rapida
	    case 646: return "Invoca 4 cthulhus cuando eres golpeado"; break; // Descripcion Detallada
    
	    case 447: return "Armadura!"; break; // Nombre
	    case 547: return "Modo Tanque ON"; break; // Descripcion Rapida
	    case 647: return "HP+4. Fuerza-2. Velocidad-2."; break; // Descripcion Detallada
    
	    case 448: return "Mental"; break; // Nombre
	    case 548: return "La fuerza de la salud"; break; // Descripcion Rapida
	    case 648: return "Aumenta la fuerza cuanta mas salud tengas."; break; // Descripcion Detallada
    
	    case 449: return "La curiosidad"; break; // Nombre
	    case 549: return "Mato al gato"; break; // Descripcion Rapida
	    case 649: return "Es un misterio"; break; // Descripcion Detallada
    
	    case 450: return "Marcar Objetivo"; break; // Nombre
	    case 550: return "A por el!"; break; // Descripcion Rapida
	    case 650: return "Marca un enemigo haciendolo mas vulnerable"; break; // Descripcion Detallada
    
	    case 451: return "Balas Atrayentes"; break; // Nombre
	    case 551: return "Control de masas"; break; // Descripcion Rapida
	    case 651: return "Los enemigos son atraidos hacia la colision de la bala"; break; // Descripcion Detallada
    
	    case 452: return "Doctor de Monstruos"; break; // Nombre
	    case 552: return "Me duele aqui"; break; // Descripcion Rapida
	    case 652: return "Los enemigos tienen mas probabilidad de soltar salud"; break; // Descripcion Detallada
    
	    case 453: return "Ladron de monstruos"; break; // Nombre
	    case 553: return "El que roba a un ladron"; break; // Descripcion Rapida
	    case 653: return "Los enemigos tienen mas probabilidad de soltar monedas."; break; // Descripcion Detallada
    
	    case 454: return "Caaaaarga!!"; break; // Nombre
	    case 554: return "Leeeeroy!"; break; // Descripcion Rapida
	    case 654: return "Fuerza+2. Invoca 4 murcielagos alrededor del jugador."; break; // Descripcion Detallada
    
	    case 455: return "Caminafuegos"; break; // Nombre
	    case 555: return "Sin botas de hielo"; break; // Descripcion Rapida
	    case 655: return "Deja un rastro de fuego despues de ser golpeado."; break; // Descripcion Detallada
    
	    case 456: return "Armadura de anillos"; break; // Nombre
	    case 556: return "Anillos dorados flotantes"; break; // Descripcion Rapida
	    case 656: return "Si el jugador tiene monedas, evita el golpe y las pierde todas."; break; // Descripcion Detallada
    
	    case 457: return "Semi Flash"; break; // Nombre
	    case 557: return "No lo tienen muy claro"; break; // Descripcion Rapida
	    case 657: return "Las balas se paran y continuan de forma intermitente."; break; // Descripcion Detallada
    
	    case 458: return "Carterista"; break; // Nombre
	    case 558: return "Visto y no visto"; break; // Descripcion Rapida
	    case 658: return "Todos los enemigos sueltan una moneda."; break; // Descripcion Detallada
    
	    case 459: return "Bombobalas"; break; // Nombre
	    case 559: return "Con cuidado"; break; // Descripcion Rapida
	    case 659: return "Las balas tienen una probabilidad de soltar una bomba al colisionar."; break; // Descripcion Detallada
    
	    case 460: return "El camino duro"; break; // Nombre
	    case 560: return "A veces es el mas rapido"; break; // Descripcion Rapida
	    case 660: return "Fuerza+2. Los enemigos no sueltan items."; break; // Descripcion Detallada
    
	    case 461: return "Hay que ir rapido"; break; // Nombre
	    case 561: return "Visteme despacio"; break; // Descripcion Rapida
	    case 661: return "Los items se recargan el doble de rapido."; break; // Descripcion Detallada
    
	    case 462: return "Silencio"; break; // Nombre
	    case 562: return "Que te calles!"; break; // Descripcion Rapida
	    case 662: return "Los skullflames no disparan."; break; // Descripcion Detallada
    
	    case 463: return "Tienda portatil"; break; // Nombre
	    case 563: return "Teletienda"; break; // Descripcion Rapida
	    case 663: return "Permite comprar un item si tienes 10 monedas."; break; // Descripcion Detallada
    
	    case 464: return "Tienda de salud portatil"; break; // Nombre
	    case 564: return "Teletiendadesalud?"; break; // Descripcion Rapida
	    case 664: return "Permite comprar un item a cambio de un corazon."; break; // Descripcion Detallada
    
	    case 465: return "Dinero bien ganado"; break; // Nombre
	    case 565: return "La recompensa de un duro trabajo"; break; // Descripcion Rapida
	    case 665: return "Transforma 1 corazon en 3 monedas. El corazon no desaparece."; break; // Descripcion Detallada
    
	    case 466: return "Sacrificio Portable"; break; // Nombre
	    case 566: return "Matate en cualquier lado"; break; // Descripcion Rapida
	    case 666: return "Permite ganar un punto de salud despues de usarlo 4 veces."; break; // Descripcion Detallada
    
	    case 467: return "Lugar ardiente"; break; // Nombre
	    case 567: return "El amor es"; break; // Descripcion Rapida
	    case 667: return "El fuego afecta a los enemigos."; break; // Descripcion Detallada
    
	    case 468: return "Escudo caro"; break; // Nombre
	    case 568: return "Mejor esperar a las ofertas"; break; // Descripcion Rapida
	    case 668: return "Usa 5 monedas para obtener un escudo."; break; // Descripcion Detallada
    
	    case 469: return "Triptocaine"; break; // Nombre
	    case 569: return "Para cuando llueve fuerte"; break; // Descripcion Rapida
	    case 669: return "Probabilidad de activar la seta cuando se recibe un golpe."; break; // Descripcion Detallada
    
	    case 470: return "No somos los campeones"; break; // Nombre
	    case 570: return "Amigo mio"; break; // Descripcion Rapida
	    case 670: return "No aparecen campeones."; break; // Descripcion Detallada
    
	    case 471: return "Cambiador"; break; // Nombre
	    case 571: return "De arriba a abajo"; break; // Descripcion Rapida
	    case 671: return "Cambia todos los items obtenidos por otros aleatorios."; break; // Descripcion Detallada
    
	    case 472: return "Iluminado"; break; // Nombre
	    case 572: return "Por el consumismo"; break; // Descripcion Rapida
	    case 672: return "Probabilidad de marcar a un enemigo que soltara muchas monedas."; break; // Descripcion Detallada
    
	    case 473: return "Alejate de mi"; break; // Nombre
	    case 573: return "Mas lejos"; break; // Descripcion Rapida
	    case 673: return "Repele a los enemigos cuando te golpean"; break; // Descripcion Detallada
    
	    case 474: return "Pinchos Puntiagudos"; break; // Nombre
	    case 574: return "Que hacen pupa"; break; // Descripcion Rapida
	    case 674: return "Los pinchos afectan a los enemigos."; break; // Descripcion Detallada
    
	    case 475: return "Daga del heroe"; break; // Nombre
	    case 575: return "Antes era una espada"; break; // Descripcion Rapida
	    case 675: return "Dispara una bala magica si tienes la salud al maximo."; break; // Descripcion Detallada
    
	    case 476: return "Bloque de hielo"; break; // Nombre
	    case 576: return "No es eficaz contra la fatiga"; break; // Descripcion Rapida
	    case 676: return "Congela a todos los enemigos."; break; // Descripcion Detallada
    
	    case 477: return "Vial de poder I"; break; // Nombre
	    case 577: return "Fuerza+1"; break; // Descripcion Rapida
	    case 677: return "Fuerza+1"; break; // Descripcion Detallada
    
	    case 478: return "Vial de poder II"; break; // Nombre
	    case 578: return "Fuerza+1"; break; // Descripcion Rapida
	    case 678: return "Fuerza+1"; break; // Descripcion Detallada
    
	    case 479: return "Vial de poder III"; break; // Nombre
	    case 579: return "Fuerza+1"; break; // Descripcion Rapida
	    case 679: return "Fuerza+1"; break; // Descripcion Detallada
    
	    case 480: return "Vial de poder IV"; break; // Nombre
	    case 580: return "Fuerza+1"; break; // Descripcion Rapida
	    case 680: return "Fuerza+1"; break; // Descripcion Detallada
    
	    case 481: return "Vial de poder V"; break; // Nombre
	    case 581: return "Fuerza+1"; break; // Descripcion Rapida
	    case 681: return "Fuerza+1"; break; // Descripcion Detallada
    
	    case 482: return "Vial de poder VI"; break; // Nombre
	    case 582: return "Fuerza+1"; break; // Descripcion Rapida
	    case 682: return "Fuerza+1"; break; // Descripcion Detallada

	    case 483: return "Botas Flotantes"; break; // Nombre
	    case 583: return "Desde el templo de las sombras"; break; // Descripcion Rapida
	    case 683: return "Permite caminar encima de los precipicios."; break; // Descripcion Detallada
    
	    case 484: return "Cthulhu Dorado"; break; // Nombre
	    case 584: return "Brilla"; break; // Descripcion Rapida
	    case 684: return "Cthullhu que suelta monedas cada 10 segundos."; break; // Descripcion Detallada
    
	    case 485: return "Aracnofobia"; break; // Nombre
	    case 585: return "No son reales"; break; // Descripcion Rapida
	    case 685: return "No salen arañas de los jarrones."; break; // Descripcion Detallada
    
	    case 486: return "Mascara de bomba"; break; // Nombre
	    case 586: return "Autodestruccion Activada"; break; // Descripcion Rapida
	    case 686: return "El personaje explota."; break; // Descripcion Detallada
    
	    case 487: return "Bienvenido"; break; // Nombre
	    case 587: return "Un poco mas apretados"; break; // Descripcion Rapida
	    case 687: return "Aparece un mimic en la entrada."; break; // Descripcion Detallada
    
	    case 488: return "El hechizero"; break; // Nombre
	    case 588: return "Ahora me ves"; break; // Descripcion Rapida
	    case 688: return "Te teletransporta a una sala aleatoria."; break; // Descripcion Detallada
    
	    case 489: return "Hombre de los 100 golpes"; break; // Nombre
	    case 589: return "En un segundo"; break; // Descripcion Rapida
	    case 689: return "Dispara muchas balas en una direccion."; break; // Descripcion Detallada
    
	    case 490: return "Vial de disparo I"; break; // Nombre
	    case 590: return "Velocidad de disparo +1"; break; // Descripcion Rapida
	    case 690: return "Cadencia de disparo +1."; break; // Descripcion Detallada
    
	    case 491: return "Vial de disparo II"; break; // Nombre
	    case 591: return "Velocidad de disparo +1"; break; // Descripcion Rapida
	    case 691: return "Cadencia de disparo +1."; break; // Descripcion Detallada
    
	    case 492: return "Vial de disparo III"; break; // Nombre
	    case 592: return "Velocidad de disparo +1"; break; // Descripcion Rapida
	    case 692: return "Cadencia de disparo +1."; break; // Descripcion Detallada
    
	    case 493: return "Barcos y monedas"; break; // Nombre
	    case 593: return "Y un monoculo"; break; // Descripcion Rapida
	    case 693: return "Dispara monedas en 8 direcciones. Tienes que tener esas monedas."; break; // Descripcion Detallada
    
	    case 494: return "Collar de la suerte"; break; // Nombre
	    case 594: return "Hoy voy a tener suerte"; break; // Descripcion Rapida
	    case 694: return "Aumenta la probabilidad de que un mimic te de items."; break; // Descripcion Detallada
    
	    case 495: return "Tension Relax"; break; // Nombre
	    case 595: return "*Se sienta*"; break; // Descripcion Rapida
	    case 695: return "HP+1 tras 10 segundos sin moverte."; break; // Descripcion Detallada
    
	    case 496: return "Jarrones bomba"; break; // Nombre
	    case 596: return "El tipico contenido de jarrones"; break; // Descripcion Rapida
	    case 696: return "Los jarrones pueden contener bombas."; break; // Descripcion Detallada
    
	    case 497: return "Vial de velocidad I"; break; // Nombre
	    case 597: return "Velocidad+1"; break; // Descripcion Rapida
	    case 697: return "Velocidad+1"; break; // Descripcion Detallada
    
	    case 498: return "Vial de velocidad II"; break; // Nombre
	    case 598: return "Velocidad+1"; break; // Descripcion Rapida
	    case 698: return "Velocidad+1"; break; // Descripcion Detallada
    
	    case 499: return "Vial de velocidad III"; break; // Nombre
	    case 599: return "Velocidad+1"; break; // Descripcion Rapida
	    case 699: return "Velocidad+1"; break; // Descripcion Detallada
    
	    case 700: return "Salud cara"; break; // Nombre
	    case 800: return "No me salen las cuentas"; break; // Descripcion Rapida
	    case 900: return "Gasta 5 monedas y recupera un corazon de salud."; break; // Descripcion Detallada
    
	    case 701: return "Dado de dos caras"; break; // Nombre
	    case 801: return "Y si cae de lado?"; break; // Descripcion Rapida
	    case 901: return "Proporciona un item aleatorio. Salud o monedas."; break; // Descripcion Detallada
    
	    case 702: return "El ingeniero"; break; // Nombre
	    case 802: return "Inagotable fuente de recursos e ideas"; break; // Descripcion Rapida
	    case 902: return "Los disparos abren las puertas"; break; // Descripcion Detallada
    
	    case 703: return "Chaqueta de tela"; break; // Nombre
	    case 803: return "Salud+"; break; // Descripcion Rapida
	    case 903: return "Aumenta la salud en 1 corazon"; break; // Descripcion Detallada
    
	    case 704: return "Chaqueta de cuero"; break; // Nombre
	    case 804: return "Salud+"; break; // Descripcion Rapida
	    case 904: return "Aumenta la salud en 1 corazon"; break; // Descripcion Detallada
    
	    case 705: return "Malla de cadenas"; break; // Nombre
	    case 805: return "Salud+"; break; // Descripcion Rapida
	    case 905: return "Aumenta la salud en 1 corazon"; break; // Descripcion Detallada
    
	    case 706: return "Malla de plata"; break; // Nombre
	    case 806: return "Salud+"; break; // Descripcion Rapida
	    case 906: return "Aumenta la salud en 1 corazon"; break; // Descripcion Detallada
    
	    case 707: return "Malla de oro"; break; // Nombre
	    case 807: return "Salud++"; break; // Descripcion Rapida
	    case 907: return "Aumenta la salud en 2 corazones"; break; // Descripcion Detallada
    
	}
    
	    return "Texto no encontrado";



}

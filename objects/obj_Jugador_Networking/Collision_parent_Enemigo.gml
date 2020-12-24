// Be repelled
if(enemy_common_repel(other)) exit;

// Spike damage
if(obj_Jugador.Bonus_Spike_Damage > 0) {
	other.HP--;
	other.alarm[2] = 4;
}
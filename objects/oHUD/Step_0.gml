// Get player hp info


if instance_exists(oPlayer) {
	playerHp = oPlayer.player_health;
	playerMaxHp = oPlayer.player_max_health;
} else {
	playerHp = 0;
}

var _scale = 0.5;

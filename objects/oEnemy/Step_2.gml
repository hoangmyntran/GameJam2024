/// @description Insert description here
// You can write your code in this editor
if state != states.DEAD 
{
	if hp <= 0 and alarm[0] == -1 {
		state = states.DEAD;
		image_index = 0;
		alarm[0] = 50;
		mask_index = -1;
	}
}

if prevHP > hp and prevHP > 0 {
	prevHP = hp;
	flashAlpha = 1;
}

image_blend = c_white;


if flashAlpha > 0 {
	flashAlpha -= 0.05;
}
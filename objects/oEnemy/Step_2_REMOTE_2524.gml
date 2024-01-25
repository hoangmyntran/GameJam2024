/// @description Insert description here
// You can write your code in this editor
if state != states.DEAD 
{
	if hp <= 0 and alarm[0] == -1 {
		state = states.DEAD;
		alarm[0] = 10;
	}
}

image_blend = c_white;


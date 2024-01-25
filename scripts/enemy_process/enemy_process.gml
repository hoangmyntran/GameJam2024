// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function calc_knockback_movement()
{
	x += hsp;
	y += vsp;
	
	hsp *= 0.91;
	vsp *= 0.91;
	
	check_if_stopped();
	
}
function calc_entity_movement() 
{
	x += hsp;
	y += vsp;
	
	hsp *= global.drag;
	vsp *= global.drag;
	
	check_if_stopped();
}

function check_facing() 
{
	var _facing = sign(xp-x);
	if _facing !=0 facing = _facing;
}

function check_for_player()
{
	/// check if player is close enough to chase
	
	var _dis = distance_to_object(oPlayer);
	
	if ((_dis <= alert_dis) or alert) and _dis > attack_dis
	{
		
		alert = true;
	
		if calc_path_timer-- <= 0 
		{
			
			calc_path_timer = calc_path_delay;
			if x == xp and y == yp var _type = 0; else var _type = 1;
			var _found_player = mp_grid_path(global.mp_grid, path, x, y, oPlayer.x, oPlayer.y, _type);
	
			if _found_player 
			{
				path_start(path, move_spd, path_action_stop, false);	
			}
		}
	}
	else 
	{
		if _dis <= attack_dis 
		{
			path_end();
		}
	}
}

function enemy_anim()
{
	// You can write your code in this editor
	switch (state) 
	{
		case states.IDLE:
			sprite_index = s_idle;
			mask_index = s_idle;
		break;
	
		case states.MOVE:
			sprite_index = s_walk;
			mask_index = s_idle;
		break;
	
		case states.ATTACK:
			sprite_index = s_attack;
			mask_index = s_idle;
		break;
	
		case states.DEAD:
			sprite_index = s_death;
			fade *= 0.965; //fades out
			mask_index = -1;
		break;
	
	}
	depth = 3 - bbox_bottom;
	xp = x;
	yp = x; //SHOULD THIS BE x OR y?
}

function check_if_stopped() 
{
	if abs(hsp) < 0.1 hsp = 0;
	if abs(vsp) < 0.1 vsp = 0;
}
if (running)
{
	switch (state)
	{
		case 0:
			if (scr_suit(suit_Light))
			{
				scr_heal(round(john.max_hp*0.1));
			}
			if (scr_suit(suit_Master))
			{
				scr_heal(round(john.max_mp*0.1));
			}
			scr_msg(obj_ram.line_btl_cmds);
			scr_open(hud_btl_cmds);
			obj_text.display = true;
			running = false;
			break;
		case 1: scr_btl_plr_move(); break;
		case 2: scr_btl_plr_move2(); break;
		case 3: scr_btl_enm_move(); break;
		case 4: scr_btl_enm_move2(); break;
		case 5: scr_btl_move_loop(); break;
		case 7: scr_btl_win(); break;
		case 8: scr_btl_win_stress(); break;
		case 10:
			with (obj_ram)
			{
				weak = false;
				if (cue_cuts != -1)
				{
					scr_cuts_load(cue_cuts);
					cue_cuts = -1;
				}
				scr_warp(last_room);
			}
			running = false;
			break;
		case 11:
			obj_ram.explode_char = enemy_targ;
			scr_cuts_load(obj_ram.cuts_explode);
			room_goto(rm_room);
			break;
		case 12: scr_btl_levelup(); break;
		case 13:
			if (scottish) {scr_cuts_load(obj_ram.cuts_boss_lose);}
			else {scr_cuts_load(obj_ram.cuts_die);}
			with (obj_ram)
			{
				respawn = false;
				goto_pt = 8;
				john.hp = 1;
				dead = false;
				weak = false;
				scr_warp(rm_room);
				last_room = rm_english;
				respawn = false;
			}
			break;
	}
	state++;
}

if (scr_check_reading())
{
	running = true;	
}

if (shaking)
{
	switch (shake_step)
	{
		case 0: shake = 1; break;
		case 1: shake = 2; break;
		case 2: shake = 3; break;
		case 3: shake = 2; break;
		case 4: shake = 1; break;
		case 5: shake = 0; break;
		case 6: shake = 1; break;
		case 7: shake = 0; break;
		case 8: shake = 1; break;
		case 9: shake = 2; break;
		case 10: shake = 3; break;
		case 11: shake = 2; break;
		case 12: shake = 1; break;
		case 13: shake = 0; break;
		case 14: shake = 1; break;
		case 15: shake = 0; break;
		case 16: shake = 1; break;
		case 17: shake = 2; break;
		case 18: shake = 3; break;
		case 19: shake = 2; break;
		case 20: shake = 1; break;
		case 21: shake = 0; break;
		case 22: shake = 1; break;
		case 23: shake = 0; break;
		case 24: shake = 1; break;
		case 25: shake = 2; break;
		case 26: shake = 3; break;
		case 27: shake = 2; break;
		case 28: shake = 1; break;
		case 29: shake = 0; break;
	}
	shake_step += 1;
	obj_ram.shake = -shake;
	if (shake_step > 29)
	{
		shaking = false;
		running = true;
		shake_step = 0;
		shake = 0;
	}
}
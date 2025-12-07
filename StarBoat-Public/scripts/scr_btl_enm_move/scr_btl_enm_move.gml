function scr_btl_enm_move()
{
	var tmp_msg = "";
	die(hud_stress_ow);
	if (enemy.hp < 1)
	{
		state = 5;	
	}
	else
	{
		if (scr_pchance(enemy.ecchi, 5) or kc(ord("H")))
		//if ((enemy.ecchi < scr_rng(0, 0xff)) or kc(ord("H")))
		{
			scr_snd(snd_cq_touching);
			var tmp_targ = obj_ram.party[scr_rng(1, 3)];
			scr_text_a(tmp_targ.name);
			scr_text_b(obj_ram.insults[scr_rng(0, 3)]);
			tmp_msg = 65;
			enemy_move = 1;
			enemy_targ = tmp_targ;
		}
		else if (enemy.hex) and (scr_pchance(1, 6))
		{
			scr_snd(snd_cq_hex);
			tmp_msg = 66;
			enemy_move = 2;
		}
		else
		{
			scr_text_a(arrude_lines[scr_rng(0, 7)]);
			tmp_msg = 67
			enemy_move = 0;
		}
		scr_msg_sys(tmp_msg);
		reading = true;
		running = false;
	}
}
if (not held)
{
	if (obj_concert.time < 1)
	{
		with (obj_concert)
		{
			scr_bgm_stop();
			state = 5;
			running = true;
		}
		held = true;
	}
	else
	{
		if (kcp(vk_down)) {if (pos < 2) {pos++;}}
		else if (kcp(vk_up)) {if (pos > 0) {pos += -1;}}
		else if (kcp(vk_shift))
		{
			scr_msg("Well?");
			obj_text.display = true;
			reading = true;
			held = true;
		}
		else if (kcp(vk_space))
		{
			var tmp_open = false;
			scr_snd(snd_cq_menu_blip);
			switch (pos)
			{
				case 0:
					do_chat = true;
					held = true;
					state = 2;
					break;
				case 1:
					obj_concert.perform_move = 1;
					obj_ram.menu_mode = 0;
					tmp_open = true;
					break;
				case 2:
					obj_concert.perform_move = 2;
					obj_ram.menu_mode = 1;
					tmp_open = true;
					break;
			}
			if (tmp_open)
			{
				scr_open(hud_perform);
				held = true;
			}
		}
	}
}

if (scr_check_reading())
{
	held = false;
	pos = 0;	
}

if (close_update)
{
	if (do_chat)
	{
		with (obj_concert)
		{
			perform_move = 0;
			perform_arg = 0;
			running = true;
		}
	}
	instance_destroy();
}
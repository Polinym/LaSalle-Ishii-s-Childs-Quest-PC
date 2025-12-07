if (not held) and (state == 1)
{
	if (kcp(vk_down))
	{
		if (pos < 4) {pos++;}	
	}
	else if (kcp(vk_up))
	{
		if (pos > 0) {pos += -1;}
	}
	else if (kcp(vk_shift))
	{
		scr_msg(line_btl_cmds);
		obj_text.display = true;
		cmd = "";
		held = true;
		reading = true;
	}
	else if (kcp(vk_space))
	{
		scr_snd(snd_cq_menu_blip);
		switch (pos)
		{
			case 3:
				if (level > 0)
				{
					obj_ram.menu_level = level;
					scr_open(hud_managic_btl);
				}
				else
				{
					scr_msg(line_no_mng + "/p/r" + line_btl_cmds + "/d");	
					reading = true;
					held = true;
				}
				break;
			case 4:
				if (obj_ram.item_count < 1)
				{
					scr_msg(line_no_items + "/p/r" + line_btl_cmds + "/d");
					reading = true;
				}
				else
				{
					scr_open(hud_items);
				}
				held = true;
				break;
			default:
				john.btl_move = pos;
				state = 2;
				break;
		}
		held = true;
	}
}

if (scr_check_reading())
{
	pos = 0;
	held = false;
}

if (close_update)
{
	if (run_btl)
	{
		obj_btl.running = true;
	}
	instance_destroy();
}
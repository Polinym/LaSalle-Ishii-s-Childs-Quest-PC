if (update)
{
	if (jpn) 
	{
		txt_hmp = "<" + scr_str_formatl(string(char.hp)) + "   =" + scr_str_formatl(string(char.mp));
	}
	else
	{
		var tmp_hp = string(char.hp);
		var tmp_mp = string(char.mp);
		if (char.hex) {tmp_mp = "HEX";}
		txt_hmp = "<" + scr_str_formatl(tmp_hp) + "  =" + scr_str_formatl(tmp_mp);
	}
	update = false;	
}

if (not held) and (state == 1)
{
	if (kcp(vk_right)) 
	{
		switch (pos)
		{
			case 0: pos = 1; break;
			case 2: pos = 3; break;
		}
	}
	else if (kcp(vk_left)) 
	{
		switch (pos)
		{
			case 1: pos = 0; break;
			case 3: pos = 2; break;
		}
	}
	else if (kcp(vk_down)) 
	{
		switch (pos)
		{
			case 0: pos = 2; break;
			case 1: pos = 3; break;
		}
	}
	else if (kcp(vk_up)) 
	{
		switch (pos)
		{
			case 2: pos = 0; break;
			case 3: pos = 1; break;
		}
	}
	else if (kcp(vk_shift))
	{
		display = false;
		state = 2;
	}
	else if (kcp(vk_space))
	{
		scr_snd(snd_cq_menu_blip);
		switch (pos)
		{
			case 0:
				scr_hud_talk();
				break;
			case 1:
				if (obj_ram.item_count < 1) 
				and (not scr_has_paints())
				{
					scr_msg_sys(28);
					reading = true;
				}
				else
				{
					hud_stress_ow.visible = false;
					scr_open(hud_items);
				}
				break;
			case 2:
				var tmp_lvl = scr_mng_level();
				if (tmp_lvl < 1)
				{
					scr_msg_sys(29);
					reading = true;
				}
				else
				{
					obj_ram.menu_level = tmp_lvl;
					scr_open(hud_managic);
				}
				break;
			case 3:
				scr_hud_look();
				break;
		}
		held = true;
	}
}

if (scr_check_reading())
{
	hud_stress_ow.state = 2;
	scr_msg_close();
}

if (close_update)
{
	if (ie(hud_stress_ow))
	{
		hud_stress_ow.state = 2;
	}
	instance_destroy();
}
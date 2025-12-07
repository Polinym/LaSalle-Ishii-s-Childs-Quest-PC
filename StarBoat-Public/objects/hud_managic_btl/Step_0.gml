if (not held)
{
	if (kcp(vk_right)) {if (x_pos < 1) {x_pos = 1;}}
	else if (kcp(vk_left)) {if (x_pos > 0) {x_pos = 0;}}
	else if (kcp(vk_down)) {if (y_pos < 3) {y_pos++;}}
	else if (kcp(vk_up)) {if (y_pos > 0) {y_pos += -1;}}
	else if (kcp(vk_shift))
	{
		scr_snd(snd_cq_menu_blip_high);
		state = 2;
		display = false;
		held = true;
	}
	else if (kcp(vk_space))
	{
		scr_snd(snd_cq_menu_blip);
		var tmp_pos = (y_pos*2)+x_pos;
		var tmp_cost = cost[tmp_pos];
		if (names[tmp_pos] != "")
		{
			if (john.mp < tmp_cost)
			{
				scr_msg(obj_ram.line_need_mp + "/p|");
				reading = true;
				held = true;
			}
			else
			{
				if (tmp_pos > 0)
				{
					john.mp += -tmp_cost;
				}
				held = true;
				selected = true;
				john.btl_move = 3;
				john.btl_arg = tmp_pos;
				obj_text.txt = "";
				hud_btl_cmds.state = 2;
				state = 2;
			}
		}
	}
}

if (scr_check_reading())
{
	state = 2;
}

if (close_update)
{
	if (not selected)
	{
		scr_msg(obj_ram.line_btl_cmds);
		obj_text.display = true;
		hud_btl_cmds.reading = true;
	}
	instance_destroy();
}
if (not held)
{
	if (kcp(vk_right)) {if (x_pos < 1) {x_pos = 1;}}
	else if (kcp(vk_left)) {if (x_pos > 0) {x_pos = 0;}}
	else if (kcp(vk_down)) {if (y_pos < 3) {y_pos++;}}
	else if (kcp(vk_up)) {if (y_pos > 0) {y_pos += -1;}}
	else if (kcp(vk_shift))
	{
		state = 2;
		display = false;
		held = true;
	}
	else if (kcp(vk_space))
	{
		var tmp_pos = (y_pos*2)+x_pos;
		if (mode == 1)
		{
			if (names[tmp_pos] != "")
			{
				scr_snd(snd_cq_menu_blip);
				scr_text_a("Waap");
				var tmp_line = "";
				var tmp_cost = cost[0];
				if (john.mp < tmp_cost)
				{
					tmp_line = obj_ram.line_need_mp;
					cmd = "exit";
				}
				else
				{
					
					var tmp_town = town_pool[tmp_pos];
					john.mp += -tmp_cost;
					hud_cmds_ow.update = true;
					obj_ram.dest = tmp_town[0];
					obj_ram.goto_pt = tmp_town[1];
					cmd = "warp";
					tmp_line = obj_ram.line_managic;
				}
				scr_msg(tmp_line);
				held = true;
				reading = true;
			}
		}
		else
		{
			if (names[tmp_pos] != "")
			{
				scr_snd(snd_cq_menu_blip);
				held = true;
				if (tmp_pos == mng_BLJ)
				{
					var i = 0;
					var tmp_cities;
					var tmp_city;
					var limit = 8;
					if (obj_ram.in_city)
					{
						tmp_cities = towns;
						if (not obj_ram.bonus) 
						{
							limit = 4;
							for (var i = 4; i < 8; i++)
							{
								names[i] = "";
							}
						}
					}
					else
					{
						tmp_cities = cities;
					}
					for (i = 0; i < limit; i++)
					{
						tmp_city = tmp_cities[i];
						if (tmp_city[3])
						{
							names[i] = tmp_city[2];
						}
						else
						{
							names[i] = "";	
						}
					}
					x_pos = 0; y_pos = 0;
					town_pool = tmp_cities;
					held = false;
					mode++;
				}
				else
				{
					scr_text_a(names[tmp_pos]);
					var tmp_line = "";
					var tmp_cost = cost[tmp_pos];
					if (john.mp < tmp_cost)
					{
						tmp_line = obj_ram.line_need_mp;
					}
					else
					{
						john.mp += -tmp_cost;
						hud_cmds_ow.update = true;
						switch (tmp_pos)
						{
							case mng_Ease:
								scr_text_a("~h2");
								tmp_line = 78;
								break;
							case mng_Nyce: 
							case mng_Nycamore:
								tmp_line = 79;
								break;
							case mng_Easamore: 
								scr_text_a("~h3");
								tmp_line = 78;
								break;
							case mng_Acwaranos: tmp_line = 80; break;
							case mng_Relaxanos: tmp_line = 81; break;
							case mng_Easaramost:
								scr_text_a("~h4");
								tmp_line = 78;
								break;
						}
					}
					scr_msg_sys(tmp_line);
					reading = true;
					cmd = "exit";
					held = true;
				}
			}
		}
	}
}
if (scr_check_reading())
{
	scr_msg_close();
	switch (cmd)
	{
		case "exit":
			state = 2;
			break;
		case "warp":
			room_goto(rm_warp);
			break;
	}
}


if (open_update)
{
	hud_stress_ow.visible = false;
}
if (close_update)
{
	hud_cmds_ow.state = 2;
	instance_destroy();
}
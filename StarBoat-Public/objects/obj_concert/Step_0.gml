if (running)
{
	switch (state)
	{
		case 0:
			if (count < wait) {count++;}
			else
			{
				count = 0;
				state++;
				scr_msg(lines[intro_line] + "/p");
				running = false;
				reading = true;
			}
			break;
		case 1:
			state++;
			scr_bgm(bgm_ItsShowtime);
			scr_doll_order("free");
			update_time = true;
			timing = true;
			ini = false;
			break;
		case 2:
			scr_open(hud_act);
			running = false;
			state++;
			break;
		case 3:
			var tmp_line = 0;
			var tmp_name;
			switch (perform_move)
			{
				case 0:
					if (scr_pchance(1, 2))
					{
						tmp_line = 6;
						perform_arg = 0;	
					}
					else
					{
						tmp_line = 7;
						perform_arg = 1;	
					}
					break;
				case 1: 
					tmp_line = 20; 
					tmp_name = obj_ram.skits[perform_arg][0];
					break;
				case 2: 
					tmp_line = 14; 
					tmp_name = obj_ram.songs[perform_arg][0];
					break;
			}
			if (perform_move > 0)
			{
				tmp_name = string_replace(tmp_name, "#  ", " ");
				tmp_name = string_replace(tmp_name, "# ", " ");
				scr_text_a(tmp_name);
			}
			scr_msg(lines[tmp_line] + "/p");
			running = false;
			reading = true;
			state++;
			break;
		case 4:
			var tmp_line = 0;
			var dmg = 0;
			switch (perform_move)
			{
				case 0:
					switch (perform_arg)
					{
						case 0:
							dmg = 25;
							if (scr_pchance(1, 2)) {dmg = 27;}
							scr_text_a(string(dmg));
							tmp_line = 10;
							break;
						case 1:
							tmp_line = scr_rng(8, 9);
							break;
					}
					scr_msg(lines[tmp_line] + "/p/p");
					break;
				default:
					var tmp_act;
					var tmp_msg = "";
					var played_times;
					switch (perform_move)
					{
						case 1: 
							tmp_act = obj_ram.skits[perform_arg]; 
							played_times = tmp_act[3];
							switch (played_times)
							{
								case 0: tmp_msg += lines[21]; break;
								case 1: tmp_msg += lines[18]; break;
								case 2: tmp_msg += lines[22]; break;
								default: tmp_msg += lines[23]; break;
							}
							tmp_act[3]++;
							break;
						case 2:
							tmp_act = obj_ram.songs[perform_arg];
							played_times = tmp_act[4];
							switch (played_times)
							{
								case 0: tmp_msg += lines[16]; break;
								case 1: tmp_msg += lines[17]; break;
								case 2: tmp_msg += lines[18]; break;
								default: tmp_msg += lines[19]; break;
							}
							tmp_act[4]++;
							break;
					}
					if (played_times > 2)
					{
						tmp_msg += lines[8];
					}
					else
					{
						var base_power = tmp_act[2][played_times];
						var dmg = ((base_power-10) * ceil(aud_power/100));
						if (dmg > 1)
						{
							dmg += scr_rng(0, 0xff) & 3;
						}
						ap += dmg;
						scr_text_a(string(dmg));
						tmp_msg += lines[24];
						}
						scr_msg(tmp_msg + "/p/p");
					break;
			}
			reading = true;
			running = false;
			state++;
			break;
		case 5:
			if (time < 1)
			{
				state++;
				scr_bgm_stop();
				scr_snd(bgm_IMessedUp);
				scr_msg(lines[11]);
				reading = true;
				running = false;
			}
			else if (ap >= ap_to_win)
			{
				state = 7;
				timing = false;
				scr_bgm_once(bgm_LevelUp);
				scr_doll_order("win");
				if (hall < 0)
				{
					scr_text_a(string(prize));
					scr_msg(lines[13]);
				}
				else
				{
					scr_msg(lines[25]);
				}
				reading = true;
				running = false;
			}
			else
			{
				state = 2;
			}
			break;
		case 6:
			scr_bgm_once(bgm_WellDoBetterNextTime);
			scr_doll_order("spin");
			scr_msg(lines[12]);
			reading = true;
			running = false;
			break;
		case 7:
			if (hall < 0)
			{
				prize = obj_ram.prices[price_WinMall];
				obj_ram.money += prize;
				with (obj_ram)
				{
					last_room = save_room;
					respawn = true;
					scr_warp(last_room);
				}
			}
			else
			{
				obj_ram.halls[hall][1] = true;
				if (hall > 5)
				{
					with (obj_ram)
					{
						scr_cuts_load(cuts_victory);
						scr_warp(rm_room);
					}
				}
				else
				{
					with (obj_ram)
					{
						scr_cuts_load(cuts_hall_win);
						if (not (scr_flag(flag_BeatHalls)))
						{
							if (scr_beat_halls())
							{
								scr_flag_set(flag_BeatHalls);
								scr_cuts_load(cuts_hall_coupon);
							}
						}
						scr_warp(rm_room);
					}
				}
			}
			running = false;
			break;
	}
}

if (timing)
{
	if (frames < 59) {frames++;}
	else
	{
		frames = 0;	
		if (time > 0)
		{
			time += -1;
		}
		update_time = true;
	}
}

if (update_time)
{
	var tmp_txt = "SHOWTIME " + string(time);
	if (time < 10) {tmp_txt += " ";}
	obj_concert_msg.txt = tmp_txt;
	
	update_time = false;	
}

if (scr_check_reading())
{
	running = true;	
}
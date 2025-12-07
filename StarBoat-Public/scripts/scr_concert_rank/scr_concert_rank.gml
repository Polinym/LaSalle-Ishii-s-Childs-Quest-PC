function scr_concert_rank()
{
	var tmp_line = 0;
	var tmp_lvl = john.lvl;
	if (hall < 0)
	{
		if (jpn)
		{
			var tmp_layer = layer_background_get_id("l_wall");
			layer_background_sprite(tmp_layer, bck_concert_mall_jpn);
		}
		obj_concert_msg.txt = "S.W. LIVE!";
		ap_to_win = 0x64;
		time = 0x3c;
		switch (tmp_lvl)
		{
			case 0:  
			case 1:
				tmp_line = 1;
				break;
			case 2: tmp_line = 2; aud_power = 0x1a; break;
			case 3: tmp_line = 2; aud_power = 0x22; break;
			case 4: tmp_line = 2; aud_power = 0x2a; break;
			case 5: tmp_line = 3; aud_power = 0x32; break;
			case 6: tmp_line = 3; aud_power = 0x3a; break;
			case 7: tmp_line = 3; aud_power = 0x42; break;
			case 8: tmp_line = 3; aud_power = 0x4a; break;
			case 9: tmp_line = 4; aud_power = 0x52; break;
			default:
				aud_power = 0x64;
				tmp_line = 5;
				break;
		}
		if (tmp_line > 3)
		{
			intro_cheer = true;	
		}
		rank = tmp_line;
	}
	else
	{
		obj_concert_msg.txt = "SW CONCERT";
		hall_data = obj_ram.halls[hall];
		var tmp_hall_aud = hall_data[4];
		aud_min = tmp_hall_aud[0];
		aud_max = tmp_hall_aud[1];
		var tmp_max;
		if (tmp_lvl >= aud_max) {rank = 5;}
		else if (tmp_lvl < aud_min) {rank = 0;}
		else
		{
			//tmp_max = aud_max-aud_min;
			rank = (tmp_lvl-aud_min)+1;
		}
		aud_power = scr_rng(0, 0xff) & 0xf;
		ap_to_win = hall_data[2];
		time = hall_data[3];
		switch (rank)
		{
			case 0: 
				tmp_line = 1;
				break; //No show
			case 1:
				tmp_line = 2;
				aud_power += 0x19;
				break;
			case 2:
				tmp_line = 2;
				aud_power += + 0x19;
				break;
			case 3:
				tmp_line = 3;
				aud_power += 0x32;
				break;
			case 4:
				tmp_line = 4;
				aud_power += + 0x4b;
				break;
			case 5:
				tmp_line = 5;
				aud_power = 0x64;
				break //Sell out
		}
		if (tmp_line > 3)
		{
			intro_cheer = true;	
		}
		var tmp_layer = layer_background_get_id("l_wall");
		layer_background_sprite(tmp_layer, bck_concert_hall);

	}
	var show_num = 0;
	var show_denum = 0;
	var tmp_txt = "";
	switch (rank)
	{
		case 0: obj_aud.visible = false; break;
		case 5: obj_aud.full = true; break;
		default:
			var tmp_zero = "0";
			var tmp_one = "1";
			show_num = tmp_lvl-aud_min+1;
			show_denum = aud_max-aud_min;
			for (var tmp_y = 0; tmp_y < 7; tmp_y++)
			{
				for (var tmp_x = 0; tmp_x < 16; tmp_x++)
				{
					if (scr_pchance(show_num, show_denum))
					{
						tmp_txt += tmp_zero;
					}
					else
					{
						tmp_txt += tmp_one;	
					}
				}
				tmp_txt += "#";
			}
			if (rank == 4)
			{
				for (var i = 0; i < scr_rng(5, 8); i++)
				{
					var pos = scr_rng(1, 111);
					if (string_char_at(tmp_txt, pos) != "#")
					{
						tmp_txt = string_set(tmp_txt, tmp_one, pos);
					}
				}
			}
			break;
	}
	obj_aud.txt = tmp_txt;
	intro_line = tmp_line;
}
function scr_mall_quad()
{
	var tmp_msg = 0;
	switch (obj_ram.quad)
	{
		case 0: tmp_msg = 31; break;
		case 1: tmp_msg = 32; break;
		case 2: 
			tmp_msg = 33; 
			//var meg = obj_ram.party[1];
			//I changed Meg to Liz here
			var char = obj_ram.party[2];
			if (char.water) and (john.lvl > 0xf)
			{
				scr_set_explode();
				scr_cuts_load(obj_ram.cuts_explode_water);
				with (obj_ram)
				{
					explode_char = liz;
					last_room = rm_room;
					respawn = false;
				}
			}
			scr_quench();
			break;
		case 3:
			with (obj_ram)
			{
				aud_min = 2;
				aud_max = 10;
				aud_hall = -1;
				save_room = last_room;
			}
			tmp_msg = 34;
			obj_ram.last_room = rm_concert;
			break;
		case 4:
			tmp_msg = 35;
			scr_cuts_load(obj_ram.cuts_hint);
			var tmp_line = 36;
			switch (arg)
			{
				case 0: tmp_line = 36; break;
				case 1: tmp_line = 37; break;
				case 2: tmp_line = 38; break;
				case 3: tmp_line = 39; break;
				case 4: tmp_line = 40; break;
				case 5: tmp_line = 41; break;
				case 6: tmp_line = 42; break;
			}
			obj_ram.room_line = tmp_line;
			with (obj_ram)
			{
				save_room = last_room;
				last_room = rm_room;
				respawn = false;
			}
			break;
	}
	scr_msg(lines[tmp_msg]);
}
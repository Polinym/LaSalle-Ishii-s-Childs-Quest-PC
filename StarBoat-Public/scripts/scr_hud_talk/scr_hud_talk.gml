function scr_hud_talk()
{
	with (obj_player)
	{
		var tmp_x = x; var tmp_y = y;
		switch (dir)
		{
			case "down": tmp_y += 16; break;	
			case "right": tmp_x += 16; break;	
			case "up": tmp_y += -16; break;	
			case "left": tmp_x += -16; break;	
		}
		if (place_meeting(tmp_x, tmp_y, par_npc))
		{
			var tmp_npc = instance_place(tmp_x, tmp_y, par_npc);
			switch (dir)
			{
				case "down": tmp_npc.dir = UP; break;	
				case "right": tmp_npc.dir = LEFT; break;	
				case "up": tmp_npc.dir = DOWN; break;	
				case "left": tmp_npc.dir = RIGHT; break;	
			}
			with (tmp_npc) {image_index = (dir*2);}
			if (tmp_npc.secret)
			{
				if (obj_ram.secret_lens)
				{
					scr_msg("/1" + obj_script.line_npc[tmp_npc.line]);
				}
				else
				{
					scr_msg_sys(93);
				}
			}
			else
			{
				var tmp_secret_line = tmp_npc.secret_line;
				if (tmp_secret_line != -1) and (scr_item_has(item_RosettaStone))
				{
					var tmp_msg = "/1" + obj_script.line_secret[tmp_secret_line];
					scr_msg(tmp_msg);
				}
				else
				{
					var tmp_msg = "/1" + obj_script.line_npc[tmp_npc.line];
					if (jpn) {tmp_msg = "[" + tmp_msg + "]";}
					scr_msg(tmp_msg);
				}
			}
		}
		else
		{
			scr_msg_sys(30);
		}
	}
	reading = true;
	
}
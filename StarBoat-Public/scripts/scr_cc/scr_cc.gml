function scr_cc(arg_cc)
{
	switch (arg_cc)
	{
		case "/A": scr_text_cc(obj_ram.text_cc_a); break;
		case "/B": scr_text_cc(obj_ram.text_cc_b); break;
		case "/C": scr_text_cc(obj_ram.text_cc_c); break;
		
		case "/^":
			state = 12;
			return true;
			break;
		case "/%":
			state = 13;
			return true;
			break;
		case "/}":
			auto_end = true;
			break;
		
		case "/p":
			//pause_count = 60;
			pause_count = 45;
			return true;
			break;
		case "//":
			txt += "/";
			return true;
			break;
		case "/0":
			delay_count = 0;
			delay_wait = 0;
			break;
		case "/1": delay_count = 1; delay_wait = 1; break;
		case "/2": delay_count = 2; delay_wait = 2; break;
		case "/3": delay_count = 3; delay_wait = 3; break;
		case "/s": obj_btl.shaking = true; break;
		case "/$": scr_open(hud_dsp_money); break;
		case "/x": 
			if (not ie(hud_stress_ow))
			{
				scr_open(hud_stress_ow);
			}
			with (hud_stress_ow)
			{
				visible = true;
				open_cmds = false;
				depth = -500;
			} 
			break;
		case "/?":
			state = 7;
			yesno_pos = 0;
			if (room == rm_room)
			{
				obj_room.yesnoing = true;
			}
			return true;
			break;
		case "/h": 
			scr_text_cc(obj_ram.halls[obj_ram.aud_hall][0]); 
			scr_text_a(obj_ram.prices[price_Concert]);
			break;
		case "/(":	
			with (obj_ram)
			{
				save_room = last_room;
				last_room = rm_concert;
			}
			break;
		case "/m":
			if (room == rm_room)
			{
				obj_room.quading = true;
			}
			state = 9;
			return true;
			break;
		case "/<": 
			with (obj_ram) 
			{
				if (save_room != -1)
				{
				last_room = save_room;
				save_room = -1;
				}
				respawn = true;
			} 
			break;
		case "/H": 
			scr_fullheal(); 
			if (ie(hud_cmds_ow)) {hud_cmds_ow.update = true;}
			break;
		case "/S":
			scr_save();
			return true;
			break;
		case "/f": scr_open(obj_flash); break;
		case "/t":
			txt += "   ";
			return true;
			break;
		case "/T":
			scr_set_respawn();
			room_goto(rm_turtle);
			break;
		case "/d":
			display = true;
			break;
		case "/r":
			txt = "";
			lines = 0
			//state = 2;
			return true;
			break;
		case "/R":
			scr_warp(obj_ram.last_room);
			break;
		case "/M":
			with (obj_ram)
			{
				goto_pt = 14;
				dest = rm_city;
			}
			room_goto(rm_warp);
			break;
			
		case "/*":
			scr_snd(snd_cq_attalk);
			with (obj_btl_enemy)
			{
				flash_count = 4;
				flash = true;
			}
			break;
		case "/I":
			with (obj_room_port)
			{
				if (obj_ram.jpn)
				{
					sprite_index = spr_port_irish_jpn;
				}
				else
				{
					sprite_index = spr_port_irish;
				}
			}
			break;
	}
	return false;
}
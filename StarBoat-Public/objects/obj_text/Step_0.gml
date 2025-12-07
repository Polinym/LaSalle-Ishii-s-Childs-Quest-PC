switch (state)
{
	case 1:
		if (pause_count > 0) {pause_count += -1;}
		else if (delay_count < delay_wait) {delay_count++;}
		else
		{
			delay_count = 0;
			var printed = false;
			while (not printed)
			{
				if (pos >= pos_end)
				{
					state = 3;
					break;
				}
				else
				{
				var c = string_char_at(work_txt, pos);
				obj_text_port.talking = true;
				
				switch (c)
				{
					case "/":
						pos += 1;
						var cc = c + string_copy(work_txt, pos, 1);
						printed = scr_cc(cc);
						break;
					case "~":
						pos += 1;
						var cc = c + string_copy(work_txt, pos, 2);
						pos += 1;
						printed = scr_cc2(cc);
						break;
					case "@":
						pos++;
						var tmp_val = real(string_copy(work_txt, pos, 2));
						obj_ram.yes_line = tmp_val;
						pos += 2;
						
						tmp_val = real(string_copy(work_txt, pos, 2));
						obj_ram.no_line = tmp_val;
						pos += 1;
						break;
					case "`":
						pos++;
						var tmp_val = real(string_copy(work_txt, pos, 3));
						obj_ram.yes_line = tmp_val;
						pos += 3;
						
						tmp_val = real(string_copy(work_txt, pos, 3));
						obj_ram.no_line = tmp_val;
						pos += 2;
						break;
					case "|":
						pause_count = 15;
						printed = true;
						break;
					case ">":
						state = 2;
						printed = true;
						break;
					case "#":
						scr_text_lb();
						line_pos = 0;
						printed = true;
						break;
					default:
						if (jpn) 
						{
							if (c == "[")
							{
								indent = true;	
							}
						}
						txt += c;
						line_pos++;
						if (c != " ")
						{
							if (delay_wait > 0) {scr_snd(snd_cq_text_blip);}
						}
						switch (c)
						{
							case " ": 
							case "-":
								blip_count = blip_wait; break;	
						}
						printed = true;
						break;
				}
				pos++;
				}
			}
			if (obj_ram.blip_sound != -1)
			{
				obj_text_port.image_speed = 0.1;
				if (blip_count < blip_wait) {blip_count++;}	
				else
				{
					scr_snd(obj_ram.blip_sound);
					blip_count = 0;
				}
			}
		}
		break;
	case 2:
		obj_text_port.talking = false;
		obj_text_shifter.visible = true;
		var pressed = (kcp(vk_space)) or (kcp(vk_shift));
		if (auto)
		{
			if (auto_count < auto_wait) {auto_count++;}
			else
			{
				auto_count = 0;
				pressed = true;
				auto = false;
			}
		}
		if (pressed)
		{
			state = 1;
			txt = "";
			line_pos = 0;
			lines = 0;
			obj_text_shifter.visible = false;
			//if (pos < pos_end) {scr_text_lb();}
		}
		break;
		
	case 3:
		obj_text_port.talking = false;
		if not (display)
		{
			obj_text_shifter.visible = true;
			if (kcp(vk_space))
			or (kcp(vk_shift))
			or (room == rm_btl)
			or (auto_end)
			{
				auto_end = false;
				state = 0;
				obj_text_shifter.visible = false;
				obj_ram.text_done = true;
				lines = 0;
				line_pos = 0;
				txt = "";
			}
		}
		else
		{
			obj_ram.text_done = true;
			state = 4;
		}
		break;
	case 7:
		var tmp_close = false;
		if (kcp(vk_right)) {if (yesno_pos < 1) {yesno_pos++;}}
		else if (kcp(vk_left)) {if (yesno_pos > 0) {yesno_pos += -1;}}
		else if (kcp(vk_shift)) 
		{
			tmp_close = true;
			obj_ram.yesno = false;
			scr_snd(snd_cq_menu_blip);
		}
		else if (kcp(vk_space)) 
		{
			tmp_close = true; 
			obj_ram.yesno = (yesno_pos == 0);
			scr_snd(snd_cq_menu_blip);
		}
		
		if (tmp_close)
		{
			line_pos = 0;
			obj_ram.yesno_done = true;
			state = 8;
		}
		break;
	case 9:
		var tmp_close = false;
		if (kcp(vk_right)) {if (quad_x < 1) {quad_x++;}}
		else if (kcp(vk_left)) {if (quad_x > 0) {quad_x += -1;}}
		
		if (kcp(vk_down)) {if (quad_y < 1) {quad_y++;;}}
		else if (kcp(vk_up)) {if (quad_y > 0) {quad_y += -1;}}
		
		if (kcp(vk_shift)) 
		{
			tmp_close = true;
			obj_ram.quad = 0;
			scr_snd(snd_cq_menu_blip);
		}
		else if (kcp(vk_space)) 
		{
			tmp_close = true; 
			obj_ram.quad = ((quad_y*2)+quad_x)+1;
			scr_snd(snd_cq_menu_blip);
		}
		
		if (tmp_close)
		{
			line_pos = 0;
			obj_ram.quad_done = true;
			state = 10;
		}
		break;
	case 12:
		if (not audio_is_playing(obj_ram.bgm))
		{
			state = 1;
		}
		break;
	case 13:
		if (not audio_is_playing(obj_ram.sound))
		{
			state = 1;
		}
		break;
}
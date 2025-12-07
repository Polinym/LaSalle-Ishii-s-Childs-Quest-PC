if (mode == 1)
{
	if (kcp(ord("Z")))
	{
		scr_snd(snd_cq_fishcake);
	}
}

if (kcp(vk_down)) {if (y_pos < 5) {y_pos++;}}
if (kcp(vk_up)) {if (y_pos > 0) {y_pos += -1;}}
if (kcp(vk_right)) {if (x_pos < 9) {x_pos++;}}
if (kcp(vk_left)) {if (x_pos > 0) {x_pos += -1;}}
if (kcp(vk_shift))
{
	scr_snd(snd_cq_name_blip);
	if (pos > 1)
	{
		if (string_length(entry) == limit)
		{
			entry = string_delete(entry, pos, 1);
		}
		else
		{
			entry = string_delete(entry, pos-1, 1);
			pos += -1;
		}
		hud_dsp_entry.pos = pos;
		hud_dsp_entry.txt = entry;
		//hud_dsp_entry.pos = clamp(pos, 1, limit);
	}
	else
	{
		if (mode < 1)
		{
			room_goto(rm_title);
		}
	}
}
else if (kcp(vk_space))
{
	var tmp_x = 1+(x_pos*2);
	if (x_pos > 4) {tmp_x++;}
	var c = string_char_at(rows[y_pos], tmp_x);
	scr_snd(snd_cq_name_blip);
	if (c == confirm)
	{
		scr_snd(snd_cq_menu_blip);
		switch (mode)
		{
			case 0:
				scr_name_entry(entry);
				scr_cuts_load(obj_ram.cuts_intro);
				scr_warp(rm_room);
				break;
			case 1:
				if (entry == "WELSH")
				or (entry == " WELSH")
				{
					obj_ram.paints[paint_Violet] = true;
					scr_cuts_load(obj_ram.cuts_quiz_win);
				}
				else
				{
					scr_cuts_load(obj_ram.cuts_quiz_lose);
				}
				room_goto(rm_room);
				break;
		}
	}
	else
	{
		if (mode == 1) {c = string_upper(c);}
		if (pos < limit) 
		{
			pos++;
			entry += c;
			hud_dsp_entry.pos = pos;
		}
		else
		{
			entry = string_set(entry, c, pos);
		}
		hud_dsp_entry.txt = entry;
	}
}
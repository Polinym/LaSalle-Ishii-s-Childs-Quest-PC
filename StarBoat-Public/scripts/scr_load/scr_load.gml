function scr_load()
{
	with (obj_ram)
	{
		var fname = scr_save_name();
		var i = 0; var i2 = 0;
		var tmp_char; var tmp_lst;
		var tmp_val; var tmp_str;
		buf = buffer_load(fname);
		buffer_seek(buf, buffer_seek_start, 0);
		
		tmp_val = scr_buffer_read();
		jpn = ((tmp_val & 0x1) > 0);
		bonus = ((tmp_val & 0x2) > 0);
		in_city = ((tmp_val & 0x4) > 0);
		john.hex = ((tmp_val & 0x8) > 0);
		thracia = ((tmp_val & 0x10) > 0);
		
		var tmp_room = scr_buffer_read();
		if (tmp_room > 0)
		{
			warped = true;
			respawn = true;
			last_x = scr_buffer_read()*16;
			last_y = scr_buffer_read()*16;
		}
		else 
		{
			scr_buffer_read();
			scr_buffer_read();
		}
		tmp_str = "";
		for (i = 0; i < 8; i++)
		{
			tmp_val = scr_buffer_read();
			if (tmp_val > 0x0)
			{
				tmp_str += chr(tmp_val);	
			}
		}
		john.name = tmp_str;
		
		money = 0;
		money += (scr_buffer_read() << 16);
		money += (scr_buffer_read() << 8);
		money += scr_buffer_read();
		
		
		john.costume = scr_buffer_read();
		john.suit = scr_buffer_read()-1;
		john.lvl = scr_buffer_read();
		john.talk = scr_buffer_read();
		john.bear = scr_buffer_read();
		john.hp = scr_buffer_read();
		john.max_hp = scr_buffer_read();
		john.mp = scr_buffer_read();
		john.max_mp = scr_buffer_read();
		
		tmp_val = (scr_buffer_read() << 8);
		tmp_val += scr_buffer_read();
		john.pp = tmp_val;
		
		tmp_lst = john.equip;
		for (i = 0; i < 4; i++)
		{
			tmp_lst[i] = scr_buffer_read();
		}
		
		for (i = 0; i < 3; i++)
		{
			tmp_char = party[i];
			tmp_char.stress = scr_buffer_read();
			tmp_char.water = scr_buffer_read();
		}
		
		item_count = 0;
		for (i = 0; i < 6; i++)
		{
			tmp_val = scr_buffer_read();
			items[i] = tmp_val;
			if (tmp_val > 0)
			{
				item_count++;
			}
		}
		
		for (i = 0; i < 4; i++)
		{
			scr_load_flags(flags, i*8, 8);
		}
		scr_load_flags(paints, 0, 7);
		scr_load_flags2(cities, 0, 8, 3);
		scr_load_flags2(towns, 0, 8, 3);
		scr_load_flags2(halls, 0, 7, 1);
		scr_load_flags2(suits, 0, 8, 2);
		turtle_x = scr_buffer_read_signed();
		turtle_y = scr_buffer_read_signed();
		secret_count = scr_buffer_read();
		for (i = 0; i < secret_count; i++)
		{
			secrets[i] = [scr_buffer_read(), scr_buffer_read(), scr_buffer_read()];
		}
	
		if (tmp_room > 0)
		{
			dest = tmp_room;
			icd(view_xview, view_yview, -999, obj_warp);
		}
		else
		{
			scr_cuts_load(cuts_load);
			scr_cuts_warp(rm_english, 8);
			scr_warp2(rm_room);
		}
		buffer_delete(buf);
	}
}

function scr_buffer_read()
{
	return buffer_read(buf, buffer_u8);	
}

function scr_buffer_read_signed()
{
	return buffer_read(buf, buffer_s8);	
}
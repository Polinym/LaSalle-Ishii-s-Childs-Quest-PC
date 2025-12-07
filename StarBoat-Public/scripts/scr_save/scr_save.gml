function scr_save()
{
	with (obj_ram)
	{
		var fname = scr_save_name();
		var i = 0; var i2 = 0;
		var tmp_char;
		var tmp_val;
		buf = buffer_create(400, buffer_fixed, 1);
		buffer_seek(buf, buffer_seek_start, 0);
		
		tmp_val = 0x0;
		if (jpn) {tmp_val = tmp_val | 0x1;}
		if (bonus) {tmp_val = tmp_val | 0x2;}
		if (in_city) {tmp_val = tmp_val | 0x4;}
		if (john.hex) {tmp_val = tmp_val | 0x8;}
		if (thracia) {tmp_val = tmp_val | 0x10;}
		scr_buffer_write(tmp_val);
		
		if (instance_exists(obj_player))
		{
			scr_buffer_write(room);
			scr_buffer_write(obj_player.x/16);
			scr_buffer_write(obj_player.y/16);
		}
		else
		{
			for (i = 0; i < 3; i++)
			{
				scr_buffer_write(0x0);
			}
		}
		
		var tmp_str = john.name;
		var tmp_lst;
		
		var tmp_len = string_length(tmp_str);
		
		for (i = 1; i < tmp_len+1; i++)
		{
			scr_buffer_write(string_ord_at(tmp_str, i));
		}
		for (i = i; i < 9; i++)
		{
			scr_buffer_write(0x0);
		}
		
		scr_buffer_write((money >> 16) & 0xff);
		scr_buffer_write((money >> 8) & 0xff);
		scr_buffer_write((money) & 0xff);
		
		scr_buffer_write(john.costume);
		scr_buffer_write(john.suit+1);
		scr_buffer_write(john.lvl);
		scr_buffer_write(john.talk);
		scr_buffer_write(john.bear);
		scr_buffer_write(john.hp);
		scr_buffer_write(john.max_hp);
		scr_buffer_write(john.mp);
		scr_buffer_write(john.max_mp);
		
		tmp_val = john.pp;
		scr_buffer_write((tmp_val >> 8) & 0xff);
		scr_buffer_write(tmp_val & 0xff);
		
		tmp_lst = john.equip;
		for (i = 0; i < 4; i++)
		{
			scr_buffer_write(tmp_lst[i]);	
		}
		
		for (i = 0; i < 3; i++)
		{
			tmp_char = party[i];
			scr_buffer_write(tmp_char.stress);
			scr_buffer_write(tmp_char.water);
		}
		
		for (i = 0; i < 6; i++)
		{
			scr_buffer_write(items[i]);	
		}
		for (var i = 0; i < 4; i++)
		{
			scr_buffer_write(scr_save_flags(flags, i*8));
		}
		scr_buffer_write(scr_save_flags2(paints, 7));
		scr_buffer_write(scr_save_flags3(cities, 3, 8));
		scr_buffer_write(scr_save_flags3(towns, 3, 8));
		scr_buffer_write(scr_save_flags3(halls, 1, 7));
		scr_buffer_write(scr_save_flags3(suits, 2, 8));
		scr_buffer_write_signed(turtle_x);
		scr_buffer_write_signed(turtle_y);
		scr_buffer_write(secret_count);
		for (i = 0; i < secret_count; i++)
		{
			tmp_lst = secrets[i];
			for (i2 = 0; i2 < 3; i2++)
			{
				scr_buffer_write(tmp_lst[i2]);
			}
		}
		scr_buffer_write(0xff);
		buffer_save(buf, fname);
		buffer_delete(buf);
	}
}

function scr_buffer_write(arg_val)
{
	buffer_write(buf, buffer_u8, arg_val);
}

function scr_buffer_write_signed(arg_val)
{
	buffer_write(buf, buffer_s8, arg_val);
}
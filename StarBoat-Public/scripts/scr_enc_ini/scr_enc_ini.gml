function scr_enc_ini(arg_mode)
{
	with (obj_ram)
	{
		var tmp_val;
		switch (arg_mode)
		{
			
			case "ow": tmp_val = (random_number & 0x7)+3; break;
			case "town": tmp_val = (random_number & 0x7)+2; break;
			case "normal": tmp_val = (random_number & 0xf)+0xc; break;
			case "cursed": tmp_val = (random_number & 0x3)+1; break;
		}
		if (scr_item_has(item_EasyRing)) {tmp_val = (tmp_val*2);}
		enc_steps_to = tmp_val;
	}
}
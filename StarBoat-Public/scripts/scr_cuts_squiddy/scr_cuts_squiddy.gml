function scr_cuts_squiddy()
{
	var tmp_line = 0;
	obj_ram.price_index = 7;
	if (obj_ram.paints[paint_Blue])
	{
		tmp_line = 84;
	}
	else if (scr_flag(flag_GaveJar))
	{
		tmp_line = 77;
	}
	else if (scr_item_has(item_AecorJar))
	{
		tmp_line = 72;
	}
	else
	{
		tmp_line = 71;	
	}
	scr_cuts_set(BCK_HOUSE, tmp_line, spr_port_squiddy, false);
}
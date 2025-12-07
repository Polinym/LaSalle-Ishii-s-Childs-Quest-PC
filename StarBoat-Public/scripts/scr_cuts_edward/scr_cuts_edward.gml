function scr_cuts_edward()
{
	var tmp_line = 119;
	var tmp_port = spr_port_edward_asleep;
	var tmp_item = item_Sunorb;
	if (scr_flag(tmp_item))
	{
		tmp_line = 121;
		tmp_port = -1;
	}
	else if (scr_item_has(tmp_item))
	{
		tmp_line = 120;
		tmp_port = spr_port_edward;
		take = tmp_item;
	}
	scr_cuts_set(BCK_OFFICE3, tmp_line, tmp_port, false);
}
function scr_cuts_contest()
{
	var tmp_line = 142;
	if (scr_item_has(item_Boats))
	{
		tmp_line = 140;
	}
	else if (scr_item_has(item_WahaiiTicket))
	{
		tmp_line = 141;
	}
	else
	if (scr_flag(flag_ChickenOK))
	{
		tmp_line = 148;
	}
	else
	{
		if (scr_item_has(item_Pass) or scr_flag(flag_UsedPass))
		{
			tmp_line = 143;
			take = item_Pass;
		}
	}
	scr_cuts_set(BCK_NOPE, tmp_line, spr_port_contest, false);
}
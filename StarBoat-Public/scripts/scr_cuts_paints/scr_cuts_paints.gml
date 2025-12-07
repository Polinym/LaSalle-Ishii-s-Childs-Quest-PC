function scr_cuts_paints()
{
	var tmp_line = 95;
	if (scr_flag(item_MagicPaint))
	{
		tmp_line = 97;
	}
	else
	{
		if (scr_has_all_paints())
		{
			tmp_line = 96;
		}
	}
	scr_cuts_set(BCK_STORE, tmp_line, spr_port_marlon, true);
}
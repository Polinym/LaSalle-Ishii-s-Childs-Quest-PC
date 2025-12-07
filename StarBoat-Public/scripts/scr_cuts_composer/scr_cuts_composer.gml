function scr_cuts_composer()
{
	var tmp_line = 100;
	if (scr_flag(flag_GotSong))
	{
		tmp_line = 102;
	}
	else
	{
		if (obj_ram.john.lvl > 26)
		{
			tmp_line = 101;
		}
	}
	scr_cuts_set(BCK_RECORDS2, tmp_line, spr_port_composer, false);
}
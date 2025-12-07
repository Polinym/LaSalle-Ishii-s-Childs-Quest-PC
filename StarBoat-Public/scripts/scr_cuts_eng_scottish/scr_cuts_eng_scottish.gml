function scr_cuts_eng_scottish()
{
	if (scr_flag(flag_Endgame))
	{
		scr_cuts_set(BCK_ENGLISH, 162, spr_port_scottish, false);
	}
	else
	{
		scr_cuts_set(BCK_ENGLISH, 8, spr_port_scottish, false);
	}
}
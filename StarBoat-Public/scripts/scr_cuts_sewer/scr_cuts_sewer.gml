function scr_cuts_sewer()
{
	if (scr_flag(flag_GotJewels))
	{
		scr_cuts_set(BCK_TUNNEL, 91, -1, false);
	}
	else
	{
		scr_cuts_set(BCK_TUNNEL, 94, spr_port_gumdrop, false);
	}
}
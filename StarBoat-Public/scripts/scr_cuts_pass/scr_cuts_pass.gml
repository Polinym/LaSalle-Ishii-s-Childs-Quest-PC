function scr_cuts_pass()
{
	var tmp_line = 138;
	if (scr_flag(item_Pass))
	{
		tmp_line = 139;
	}
	scr_cuts_set(BCK_MEOWCO, tmp_line, spr_port_iat, false);
}
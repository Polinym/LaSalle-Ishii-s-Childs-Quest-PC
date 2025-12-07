function scr_cuts_get(arg_bck, arg_lines, arg_port, arg_item)
{
	if (scr_flag(arg_item))
	{
		scr_cuts_set(arg_bck, arg_lines[1], -1, false);
	}
	else
	{
		scr_cuts_set(arg_bck, arg_lines[0], arg_port, false);
	}
}
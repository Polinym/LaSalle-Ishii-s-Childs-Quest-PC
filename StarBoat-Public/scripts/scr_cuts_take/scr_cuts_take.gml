function scr_cuts_take(arg_bck, arg_lines, arg_port, arg_item)
{
	if (scr_flag(arg_item))
	{
		scr_cuts_set(arg_bck, arg_lines[2], arg_port, false);
	}
	else
	{
		if (scr_item_has(arg_item))
		{
			scr_cuts_set(arg_bck, arg_lines[1], arg_port, false);
			take = arg_item;
		}
		else
		{
			scr_cuts_set(arg_bck, arg_lines[0], arg_port, false);
		}
	}
}
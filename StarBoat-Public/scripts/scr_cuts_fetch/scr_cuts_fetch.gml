function scr_cuts_fetch(arg_index)
{
	if (arg_index == obj_ram.menu_slot)
	{
		scr_cuts_set(BCK_HOUSE, 28, obj_ram.explode_char.port_happy, false);
	}
	else
	{
		scr_cuts_set(BCK_HOUSE, 27, -1, false);
	}
}
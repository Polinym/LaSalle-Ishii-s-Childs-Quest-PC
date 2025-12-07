function scr_item_force_flag(arg_item)
{
	with (obj_ram)
	{
		scr_flag_set(arg_item);
		scr_item_force(arg_item);
	}
}
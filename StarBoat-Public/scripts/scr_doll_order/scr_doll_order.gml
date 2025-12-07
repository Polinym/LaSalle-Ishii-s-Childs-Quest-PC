function scr_doll_order(arg_order)
{
	with (par_doll)
	{
		orders = arg_order;
		ani_frame = 0; ani_count = 0;
		if (arg_order != "free")
		{
			wait_count = wait_wait;
		}
	}
}
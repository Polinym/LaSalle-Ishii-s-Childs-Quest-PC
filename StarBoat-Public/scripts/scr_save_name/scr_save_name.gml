function scr_save_name()
{
	with (obj_ram)
	{
		if (jpn)
		{
			return "cq.msh";
		}
		else
		{
			if (bonus)
			{
				return "sw_plus.msh";
			}
			else
			{
				return "sw.msh";
			}
		}
	}
}
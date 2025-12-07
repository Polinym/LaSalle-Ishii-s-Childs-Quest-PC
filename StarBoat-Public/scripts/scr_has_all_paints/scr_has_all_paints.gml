function scr_has_all_paints(arg_paints)
{
	with (obj_ram)
	{
		for (var i = 0; i < 7; i++)
		{
			if (not paints[i])
			{
				return false;	
			}
		}
		return true;
	}
}
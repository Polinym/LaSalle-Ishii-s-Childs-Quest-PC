function scr_has_paints(arg_paints)
{
	with (obj_ram)
	{
		for (var i = 0; i < 7; i++)
		{
			if (paints[i])
			{
				return true;	
			}
		}
		return false;
	}
}
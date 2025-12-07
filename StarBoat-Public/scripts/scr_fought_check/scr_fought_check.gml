function scr_fought_check(arg_enemy)
{
	with (obj_ram) 
	{
		var tmp_f = fought;
		for (var i = 0; i < fought_count; i++)
		{
			if (tmp_f[i] == arg_enemy)
			{
				return true;
			}
		}
	}
	return false;
}
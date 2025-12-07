function scr_quench()
{
	with (obj_ram)
	{
		for (var i = 1; i < 4; i++)
		{
			party[i].water = false;
		}
	}
}
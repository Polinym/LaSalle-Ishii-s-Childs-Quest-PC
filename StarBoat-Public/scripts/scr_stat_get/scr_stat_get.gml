function scr_stat_get(arg_stat)
{
	with (obj_ram)
	{
		var val = 0;
		var i;
		switch (arg_stat)
		{
			case "charm":
				val = john.talk;
				for (var i = 0; i < 4; i++)
				{
					val += equips[john.equip[i]][2];
				}
				for (var i = 0; i < 6; i++)
				{
					if (halls[i][1]) {val += 8;}
				}
				break;
			case "raw_charm":
				val = 0;
				for (var i = 0; i < 4; i++)
				{
					val += equips[john.equip[i]][2];
				}
				for (var i = 0; i < 6; i++)
				{
					if (halls[i][1]) {val += 8;}
				}
				return val;
				break;
		}
		if (val < 0) {val = 0;}
		return val;
	}
}
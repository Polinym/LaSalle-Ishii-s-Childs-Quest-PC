function scr_name_entry(arg_name)
{
	with (obj_ram)
	{
		var tmp_spr = 0;
		if (arg_name == "")
		{
			if (jpn)
			{
				arg_name = "Clam";
				tmp_spr = 1;
			}
			else
			{
				arg_name = "John";
			}
		}
		else
		{
			if (bonus)
			{
				switch (string_lower(arg_name))
				{
					case "clam":
					case "shijimi":
					case "korumeri":
						tmp_spr = 1;
						break;
					case "alucard":
						tmp_spr = 2;
						break;
					case "loto":
					case "roto":
					case "erdrick":
						tmp_spr = 3;
						break;
					case "mars":
						tmp_spr = 4;
						break;
					case "ninten":
						tmp_spr = 5;
						break;
					case "dale":
						tmp_spr = 6;
						break;
					case "link":
						tmp_spr = 7;
						break;
					case "leaf":
					case "lief":
					case "leif":
						tmp_spr = 8;
						break;
					case "thracia":
					case "torakia":
						tmp_spr = 8;
						arg_name = "John";
						break;
				}
			}
		}
		john.name = arg_name;
		john.costume = tmp_spr;
	}
}
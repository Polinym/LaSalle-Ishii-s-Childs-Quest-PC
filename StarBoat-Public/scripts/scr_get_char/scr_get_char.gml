function scr_get_char(arg_name)
{
	with (obj_ram)
	{
		switch (string_lower(get_str("Which character?")))
		{
			case "edgar": return edgar; break;	
			case "ruby": return ruby; break;	
		}
		return -1;
	}
}
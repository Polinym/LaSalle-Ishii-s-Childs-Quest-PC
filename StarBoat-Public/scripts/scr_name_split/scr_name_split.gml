function scr_name_split(arg_name, arg_limit)
{
	var tmp_len = string_length(arg_name);
	if (tmp_len > arg_limit)
	{
		var check_for = " ";
		for (var i = tmp_len; i > 0; i += -1)
		{
			if (string_char_at(arg_name, i)	== check_for)
			{
				if (obj_ram.jpn) {return string_set(arg_name, "# ", i);}
				else {return string_set(arg_name, "#  ", i);}
			}
		}
		return arg_name;
	}
	else {return arg_name;}
}
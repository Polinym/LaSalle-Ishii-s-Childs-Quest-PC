function scr_str_formatl(arg_int)
{
	var tmp_str = string(arg_int);
	while (string_length(tmp_str) < 3)
	{
		tmp_str = " " + tmp_str;	
	}
	return tmp_str;
}
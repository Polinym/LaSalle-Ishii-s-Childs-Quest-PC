function scr_format_money()
{
	var tmp_str = string(obj_ram.money) + "$";
	while (string_length(tmp_str) < 8)
	{
		tmp_str = " " + tmp_str;
	}
	return tmp_str;
}
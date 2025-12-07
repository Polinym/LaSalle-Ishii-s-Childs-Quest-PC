function scr_item_name_split(arg_name, arg_len)
{
	if (string_length(arg_name) >= arg_len)
	{
		return string_replace(arg_name, " ", "#");	
	}
	return arg_name;
}
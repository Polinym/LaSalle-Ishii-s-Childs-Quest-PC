function scr_item_use_name(arg_name)
{
	if (string_length(arg_name) > 10)
	{
		arg_name = string_replace(arg_name, " ", "#");	
	}
	return arg_name;
}
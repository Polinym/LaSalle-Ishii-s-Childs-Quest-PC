function scr_item_canequip(arg_item, arg_char)
{
	var tmp_char = arg_item.char;
	var tmp_class = arg_item.class;
	var tmp_mf = arg_item.equip_by;
	
	if (tmp_char != "any")
	{
		return (arg_char.name == tmp_char);
	}
	else
	if (tmp_class != "any")
	{
		return (arg_char.class == tmp_class);
	}
	else if (tmp_mf != "both")
	{
		if (tmp_mf == "female") {return (arg_char.female);}	
		else if (tmp_mf == "male") {return not (arg_char.female);}
	}
	return true;
}
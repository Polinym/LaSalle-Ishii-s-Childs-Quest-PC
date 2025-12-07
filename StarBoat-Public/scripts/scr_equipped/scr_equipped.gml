function scr_equipped(arg_slot, arg_item)
{
	with (obj_ram.john)
	{
		switch (arg_slot)
		{
			case "mic": return (equip[0] == arg_item);
			case "dress": return (equip[1] == arg_item);
			case "shoes": return (equip[2] == arg_item);
			case "makeup": return (equip[3] == arg_item);
		}
	}
}
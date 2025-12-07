function scr_equip_get(arg_char)
{
	with (arg_char)
	{
		return [slot_weapon, slot_body, slot_head, slot_other];	
	}
}
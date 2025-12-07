function scr_john_spr()
{
	with (obj_ram) 
	{
		if (john.suit != -1)
		{
			return suits[john.suit][3];
		}
		else
		{
			return costumes[john.costume];
		}
	}
}
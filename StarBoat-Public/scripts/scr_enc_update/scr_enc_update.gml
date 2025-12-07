function scr_enc_update()
{
	if (scr_item_has(item_CursedDress))
	{
		scr_enc_ini("cursed");
	}
	else
	{
		if (obj_ram.fought)
		{
			obj_ram.fought = false;
			scr_enc_ini("normal");
		}
		else
		{
			switch (room)
			{
				case rm_ow: scr_enc_ini("ow"); break;
				case rm_city: scr_enc_ini("town"); break;
				default: scr_enc_ini("normal"); break;
			}
		}
	}
	if (scr_item_has(item_PeaceRing))
	{
		with (obj_ram) {enc_steps_to = enc_steps_to * 2;}
	}
}
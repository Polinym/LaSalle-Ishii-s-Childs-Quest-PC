function scr_cuts_quiz()
{
	if (obj_ram.paints[paint_Violet])
	{
		scr_cuts_set(BCK_CASTLE, 66, spr_port_quiz, false);
	}
	else
	{
		scr_cuts_set(BCK_CASTLE, 61, spr_port_quiz, false);
	}
}
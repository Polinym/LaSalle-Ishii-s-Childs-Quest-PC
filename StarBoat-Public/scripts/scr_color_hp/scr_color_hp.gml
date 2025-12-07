function scr_color_hp()
{
	if (obj_ram.dead)
	{
		draw_set_color(RED);
	}
	else
	if (obj_ram.weak)
	{
		draw_set_color(YELLOW);
	}
}
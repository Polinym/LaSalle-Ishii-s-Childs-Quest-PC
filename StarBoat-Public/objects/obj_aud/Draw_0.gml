if (visible)
{
	draw_sprite(sprite_index, 0, x, y);
	if (not full)
	{
		draw_set_font(font);
		draw_txt(x, y, txt);
	}
}
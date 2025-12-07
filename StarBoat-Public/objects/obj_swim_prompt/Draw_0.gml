if (on and (not jpn))
{
	draw_set_font(font_wnd);
	draw_txt(x, y, txt_wnd);
	draw_set_font(font);
	draw_txt(x+8, y+16, txt);
}
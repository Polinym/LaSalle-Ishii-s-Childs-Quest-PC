function scr_font_wnd()
{
	draw_set_font(font_wnd);
	if (obj_ram.dead) {draw_set_font(font_wnd_red);}
	else if (obj_ram.weak) {draw_set_font(font_wnd_yellow);}
}
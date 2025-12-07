x = view_xview+pos_x;
y = view_yview+pos_y;
scr_font_wnd();
draw_txt(x, y, txt_wnd);
draw_set_font(font);
scr_color_hp();
if (dsp_h > 1)
{
	draw_txt(x+title_offset, y, title);
}
if (display)
{
	draw_txt(x+8, y+16, txt);
}
draw_set_color(c_white);
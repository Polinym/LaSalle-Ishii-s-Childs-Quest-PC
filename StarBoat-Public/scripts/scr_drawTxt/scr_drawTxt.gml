function scr_drawTxt(arg_msg)
{
	draw_set_font(font);
	draw_set_color(c_white);
	draw_text(x, y, string_hash_to_newline(arg_msg));
}
function scr_draw_secretlens()
{
	if (obj_ram.secret_alpha > 0)
	{
		var tmp_x = view_xview;
		var tmp_y = view_yview;
		draw_set_color(#861A9B);
		draw_set_alpha(obj_ram.secret_alpha);
		draw_rect(tmp_x, tmp_y, tmp_x+256, tmp_y+224);
		draw_set_color(c_white);
		draw_set_alpha(1);
	}
}
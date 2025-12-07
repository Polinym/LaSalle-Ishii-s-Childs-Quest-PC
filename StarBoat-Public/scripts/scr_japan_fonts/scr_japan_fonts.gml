function scr_japan_fonts()
{
	scr_clear_fonts();
	var ord_space = ord(" ");
	var ord_0 = ord("0");
	font = font_add_sprite(spr_font_jpn2, ord_space, false, 0);
	font2 = font_add_sprite(spr_font2_jpn, ord_space, false, 0);
	font_end = font_add_sprite(spr_font_end_jpn, ord_space, false, 0);
	font_wnd = font_add_sprite(spr_menus_jpn, ord_0, false, 0);
	font_wnd2 = font_add_sprite(spr_menus2_jpn, ord_0, false, 0);
	font_wnd_end = font_add_sprite(spr_menus_end_jpn, ord_0, false, 0);
	font_wnd_yellow = font_add_sprite(spr_menus_yellow_jpn, ord_0, false, 0);
	font_wnd_red = font_add_sprite(spr_menus_red_jpn, ord_0, false, 0);
}
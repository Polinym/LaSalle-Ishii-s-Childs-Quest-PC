event_inherited();
if (display)
{
	var tmp_x = x+8; var tmp_y = y+8;
	scr_color_hp();
	draw_txt(tmp_x+8, tmp_y, txt2);
	draw_sprite(spr_menu_cursor, 0, tmp_x, tmp_y+(pos*16));
	draw_set_color(c_white);
}
event_inherited();
if (display)
{
	scr_color_hp();
	var tmp_x = x+8; var tmp_y = y+16;
	if (not paint_mode)
	{
		if (prompt_mode)
		{
			draw_sprite(spr_menu_cursor, 0, x+32+(prompt_pos*56), y+64);
		}
		else if (to_mode)
		{
			draw_sprite(spr_menu_cursor, 0, x+56+(to_pos*40), y+64);
		}
		else
		{
			draw_sprite(spr_menu_cursor, 0, tmp_x+(x_pos*88), tmp_y+(y_pos*16));
		}
	}
	tmp_x += 8;
	var tmp_i;
	var end_at = 3;
	if (suit_mode) {end_at++;}
	for (var i = 0; i < end_at; i++)
	{
		tmp_i = (i*2);
		draw_txt(tmp_x, tmp_y, item_names[tmp_i]);
		draw_txt(tmp_x+88, tmp_y, item_names[tmp_i+1]);
		tmp_y += 16;
	}
	draw_txt(x+16, y+64, last_row);
	draw_set_color(c_white);
}
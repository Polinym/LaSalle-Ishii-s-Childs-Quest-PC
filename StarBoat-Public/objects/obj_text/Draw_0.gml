shake = obj_ram.shake;
draw_set_font(font);
scr_color_hp();
var tmp_x = x+shake;
var tmp_y = y+shake;
draw_txt(tmp_x, tmp_y, txt);
switch (state)
{
	case 2:
		if (lines < line_limit)
		{
			draw_sprite(spr_menu_cursor, 0, x+64, y+48);
		}
		else
		{
			if (line_pos < 17)
			{
				draw_sprite(spr_menu_cursor, 0, x+((line_pos+1)*8), y+48);
			}
		}
		break;
	case 7:
	case 8:
		tmp_x += 8;
		if (jpn) {tmp_y += (8*lines);}
		else {tmp_y += (16*lines);}
		draw_sprite(spr_menu_cursor, 0, tmp_x+(40*yesno_pos), tmp_y);
		break;
	case 9:
	case 10:
		tmp_x += 8;
		tmp_y += 32;
		draw_sprite(spr_menu_cursor, 0, tmp_x+(64*quad_x), tmp_y+(16*quad_y));
		break;
}
draw_set_color(c_white);
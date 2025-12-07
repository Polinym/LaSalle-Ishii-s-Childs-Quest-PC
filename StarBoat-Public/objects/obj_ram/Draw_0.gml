var tmp_x = view_xview; var tmp_y = view_yview;
//draw_set_font(font);
//draw_txt(view_xview+8, view_yview, string(random_number));
switch (room)
{
	case rm_warp: break;
	case rm_btl: break;
	case rm_room: break;
	case rm_concert: break;
	default:
		draw_set_color(c_black);
		draw_rectangle(tmp_x, tmp_y, tmp_x+8, tmp_y+224, false);
		draw_set_color(c_white);
		break;
}
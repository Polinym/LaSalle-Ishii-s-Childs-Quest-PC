x = view_xview; y = view_yview;
switch (ani_state)
{
	case 0:
		if (blink)
		{
			scr_draw_flash();
		}
		break;
	default:
		draw_set_color(c_black);
		var x2 = x+128;
		var x3 = x+256;
		draw_rect(x, y, x2, y+(yc[0]));
		draw_rect(x2, y, x3, y+(yc[1]));

		var y2 = y+224;
		draw_rect(x, y2-yc[2], x2, y2+yc[2]);
		draw_rect(x2, y2-yc[3], x3, y2+yc[3]);
		draw_set_color(c_white);
		break;
}
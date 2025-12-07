event_inherited();
var tmp_x = x+16;
var tmp_y = y+24;
var tmp_y2 = tmp_y;
for (var i = 0; i < 4; i++)
{
	draw_txt(tmp_x, tmp_y2, names[i]);
	draw_txt(tmp_x+80, tmp_y2, price_names[i]);
	tmp_y2 += 16;
}
tmp_x = x+8; tmp_y = y+8;
draw_sprite(spr_menu_cursor, 0, tmp_x, tmp_y+(pos*16));

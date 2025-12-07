var tmp_x = x+obj_ram.shake;
var tmp_y = y+obj_ram.shake;
draw_set_font(font);
if (obj_ram.dead) {draw_set_font(font_red);}
else if (obj_ram.weak) {draw_set_font(font_yellow);}
draw_txt(tmp_x, tmp_y, txt);
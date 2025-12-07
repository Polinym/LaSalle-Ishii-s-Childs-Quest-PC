x = view_xview+(pos_x); y = view_yview+(pos_y);
x += obj_ram.shake; y += obj_ram.shake;
scr_font_wnd();
draw_txt(x, y, txt_wnd);
scr_color_hp();
draw_set_font(font);
draw_txt(x+tx, y, title);
draw_txt(x+txt_x, y+txt_y, txt);
draw_set_color(c_white);
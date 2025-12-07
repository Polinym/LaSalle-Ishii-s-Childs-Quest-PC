draw_set_font(font_wnd);
draw_txt(16, 32, wnd1);
draw_txt(16, 176, wnd6);

draw_set_font(font_wnd2);
draw_txt(96, 32, wnd2);
draw_txt(96, 80, wnd3);
draw_txt(96, 168, wnd2);

draw_txt(176, 32, wnd4);
draw_txt(176, 96, wnd5);

draw_set_font(font);
draw_txt(24, 16, "MANAGER");
draw_set_halign(fa_center);
draw_txt(56, 32, john.name);
draw_set_halign(fa_left);
draw_txt(24, 48, txt);
draw_txt(40, 176, "EQP.");
draw_txt(24, 192, suit);

draw_set_font(font2);
if (jpn) {draw_txt(120, 16, "CHILDS STARS");}
else {draw_txt(120, 16, "S. WARRIORS");}
draw_txt(104, 40, txt2);
if (jpn) {draw_txt(112, 80, "EQUIP");}
else {draw_txt(112, 80, "OUTFIT");}
draw_txt(104, 96, txt3);
if (jpn) {draw_txt(104, 168, "ROUTINE");}
else {draw_txt(120, 168, "ACT");}
draw_txt(104, 184, txt4);

if (jpn) {draw_txt(184, 32, "FUSSDO");}
else {draw_txt(184, 32, "STRESS");}
draw_txt(184, 40, txt5);
if (jpn) {draw_txt(180, 96, "CONCERT");}
else {draw_txt(188, 96, "HALLS");}
draw_txt(184, 112, txt6);
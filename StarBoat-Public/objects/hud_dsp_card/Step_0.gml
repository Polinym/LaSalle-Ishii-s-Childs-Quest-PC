var tmp_txt = "<>  " + scr_str_formatl(char.hp);
if (char.hex) {tmp_txt += "##=>  HEX";}
else {tmp_txt += "##=>  " + scr_str_formatl(char.mp);}
tmp_txt += "##Level " + string(char.lvl);
tmp_txt += "##" + scr_format_money();
txt = tmp_txt;
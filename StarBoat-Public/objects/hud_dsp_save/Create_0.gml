event_inherited();
john = obj_ram.john;
scr_dsp_ini(8, 2, 14, 1.5);
name = scr_john_name();
txt = name + string_repeat(" ", 9-string_length(name));
txt += "Lv " + string(john.lvl);
if (john.lvl < 9) {txt += " ";}



txt += "##  Game saved.";

txt_y = 8;
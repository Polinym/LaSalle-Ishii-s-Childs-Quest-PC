font = obj_ram.font;
font2 = obj_ram.font2;
font_wnd = obj_ram.font_wnd;
font_wnd2 = obj_ram.font_wnd2;
jpn = obj_ram.jpn;

wnd1 = scr_draw_menu(8, 8);
wnd2 = scr_draw_menu(8, 2);

wnd3 = scr_draw_menu(8, 4.5);

wnd4 = scr_draw_menu(6, 3);
wnd5 = scr_draw_menu(6, 6.5);
wnd6 = scr_draw_menu(8, 1.5);

john = obj_ram.party[0];
charm = scr_stat_get("charm");
name = john.name;
var tmp_lvl = john.lvl;
var tmp_txt = "";
var tmp_str;
tmp_txt = "<>  " + scr_str_formatl(string(john.hp));
tmp_txt += "##=>  " + scr_str_formatl(string(john.mp));
tmp_str = string(tmp_lvl);
if (jpn)
{
if (string_length(tmp_str) < 2) {tmp_str = " " + tmp_str;}
tmp_txt += "##Level" + tmp_str;
}
else
{
tmp_txt += "##Level " + tmp_str;
}
tmp_txt += "##" + scr_format_money();
tmp_txt += "##MHP  " + scr_str_formatl(john.max_hp);
tmp_txt += "##MMP  " + scr_str_formatl(john.max_mp);
tmp_txt += "##TALK " + scr_str_formatl(john.talk);
tmp_txt += "##BEAR " + scr_str_formatl(john.bear);
txt = tmp_txt;
suit = scr_icon("suit") + "Cheap#  Suit";

tmp_str = string(john.pp);
while (string_length(tmp_str) < 8) {tmp_str = " " + tmp_str;}
tmp_txt = "POPULAR:#" + tmp_str;
tmp_str = string(charm);
while (string_length(tmp_str) < 8) {tmp_str = " " + tmp_str;}
tmp_txt += "#CHARM:#" + tmp_str;
txt2 = tmp_txt;

tmp_txt = "";
for (var i = 0; i < 4; i++)
{
	tmp_txt += scr_equip_name(john.equip[i]) + "#";
}
txt3 = tmp_txt;

tmp_txt = "";
var tmp_songs = 0;
var tmp_skits = 0;
for (var i = 0; i < 8; i++)
{
	if (tmp_lvl >= obj_ram.songs[i][1]) {tmp_songs++;}
	if (tmp_lvl >= obj_ram.skits[i][1]) {tmp_skits++;}
}
if (scr_flag(flag_GotSong)) {tmp_songs++;}
tmp_txt += "SONGS " + string(tmp_songs);
tmp_txt += "##SKITS " + string(tmp_skits);
txt4 = tmp_txt;

tmp_txt = "     %#";
var tmp_char;
var tmp_name;
for (var i = 1; i < 4; i++)
{
	tmp_char = obj_ram.party[i];
	tmp_name = tmp_char.name;
	if (obj_ram.jpn)
	{
		tmp_name = string_copy(tmp_name, 1, 3);
	}
	tmp_txt += tmp_name + scr_str_formatl(tmp_char.stress) + "##";
}
txt5 = tmp_txt;

tmp_txt = "";
var tmp_halls = obj_ram.halls;
for (var i = 0; i < 6; i++)
{
	tmp_char = tmp_halls[i];
	if (tmp_char[1])
	{
		tmp_name = tmp_char[0];
		if (string_length(tmp_name) > 6) {tmp_name = string_copy(tmp_name, 1, 6);}
		tmp_txt += tmp_name + "##";
	} else {tmp_txt += "##";}
}
txt6 = tmp_txt;
active = true;
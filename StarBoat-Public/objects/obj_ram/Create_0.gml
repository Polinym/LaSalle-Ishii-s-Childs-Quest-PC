randomize();
//Icons start at 128
var i;

//scr_mob_ini();

john = icd(-128, -128, 128, obj_John);
meg = icd(-128, -128, 128, obj_Meg);
ely = icd(-128, -128, 128, obj_Ely);
liz = icd(-128, -128, 128, obj_Liz);
edgar = john;
ruby = meg;
char = edgar;
mable = ely;

mic = 0;
dress = 0;
shoes = 0;
makeup = 0;

items[15] = 0;
flags[31] = 0;
for (i = 0; i < 32; i++)
{
	items[i] = 0;
	flags[i] = 0;
}
scr_flag_set(flag_GotRoyalties);
paints[6] = false;
for (var i = 0; i < 6; i++)
{
	paints[i] = false;
}

in_city = false;
item_count = 0;
get_item = -1;
scr_hash_ini();
scr_new_items();
scr_new_managic();
scr_new_towns();
scr_new_halls();
scr_new_levels();
scr_new_equips();
scr_new_act();
scr_new_enemies();
scr_new_bck();
scr_new_cuts();
scr_new_cuts_setup();
scr_new_foods();
scr_new_suits();
scr_new_attalks();
scr_new_arrudes();
scr_new_prices();
scr_new_ram_lines();
scr_new_dogs();
scr_new_costumes();
scr_new_warps();

turtle_x = 0;
turtle_y = 0;

max_level = 32;
max_damage = 0xfa;
secret_lens = false;
secret_alpha = 0;

entered_settings = false;

cue_cuts = -1;

party[3] = -1;
for (i = 0; i < 3; i++)
{
	party[i] = -1;	
}

party[0] = john;
party[1] = meg;
party[2] = liz;
party[3] = ely;

script = scr_open(obj_script);
script_menu = scr_open(obj_script_menu);

money = 0;

room_name = "";
fought = false;
shake = 0;

text_done = false;
menu_done = false;
menu_done2 = false;
move_done = false;
target_done = false;

explode_char = -1;
menu_slot = -1;
menu_item = -1;
menu_val = 0;
menu_mode = 0;
menu_use_name = "";
menu_char = -1;
menu_targ = -1;
menu_level = -1;
menu_shop_type = 0;
menu_shop = 0;
menu_port = -1;
target_char = -1;
keyboard_mode = 0;

swap_party = [-1, -1, -1];
swap_party_count = 0;

text_cc_a = "";
text_cc_b = "";
text_cc_c = "";

can_menu = true;

aud_min = 0;
aud_max = 1;
aud_hall = -1;

wtw = false;
peaceful = false;

file_index = 0;
config_file = "config.sw";

paused = false;

blip_sound = -1;
death_count = 0;

use_newcol = false;
col_layer = -1;
last_room = -1;
save_room = -1;
warped = true;
respawn = false;
dest = -1;
goto_pt = 1;
goto_dir = -1;

yesno = false;
yesno_done = false;
quad = 0;
quad_done = false;
yes_txt = "";
no_txt = "";

yes_line = 0;
no_line = 0;

mute = false;
dead = false;
weak = false;

sound = -1;
bgm = -1;
music = -1;

last_bgm = -1;
bgm_index = -1;

last_bgm_delay = 45;

volume_sound = 0.3;
volume_music = 0.45;
volume_bgm   = 0.35;

stat_inc[7] = 0;
for (i = 0; i < 7; i++)
{
	stat_inc[i] = 0;
}

enemy = -1;
enc_steps_to = 0;
enc[20] = [];
for (var i = 0; i < 20; i++)
{
	enc[i] = [enm_Student, enm_Student, enm_Student, enm_Student];	
}

btl_user = meg;
btl_targ = meg;
btl_bck = -1;
random_number = 0;
//rng_a = scr_rng(0, 0xff);
//rng_b = scr_rng(0, 0xff);
//rng_c = scr_rng(0, 0xff);

room_line = 0;
room_bck = 0;
room_port = 0;
room_ui = false;
room_take = -1;
room_arg = -1;
room_bgm = -1;
show_dbg = false;


var ord_space = ord(" ");
var ord_0 = ord("0");
font = font_add_sprite(spr_font, ord_space, false, 0);
font2 = font_add_sprite(spr_font2, ord_space, false, 0);
font_end = font_add_sprite(spr_font_end, ord_space, false, 0);
font_wnd = font_add_sprite(spr_menus, ord_0, false, 0);
font_wnd2 = font_add_sprite(spr_menus2, ord_0, false, 0);
font_wnd_end = font_add_sprite(spr_menus_end, ord_0, false, 0);
font_wnd_yellow = font_add_sprite(spr_menus_yellow, ord_0, false, 0);
font_wnd_red = font_add_sprite(spr_menus_red, ord_0, false, 0);
font_aud = font_add_sprite(spr_aud_cover, ord("0"), false, 0);

tilemaps = ["l_base", "l_decor", "l_shore", "l_land"];

ending_mode = -1;
ending_text = false;

scr_city_unlock(city_NY);
scr_town_unlock(town_Melville);

//scr_item_add(item_MasterCape);
//scr_item_add(item_Boats);
//scr_item_add(item_SecretLens);

jpn = false;
bonus = true;
thracia = false;
new_ost = true;


if (file_exists(config_file))
{
	scr_load_config();
	if (jpn) {scr_japan();}
	if (bonus) {scr_bonus();}
	
	//scr_set_level(32);
	room_goto(rm_title);
	
}
else
{
	room_goto(rm_game);
}



/*
scr_set_level(31);
goto_pt = 1;
room_goto(rm_town_green);
*/

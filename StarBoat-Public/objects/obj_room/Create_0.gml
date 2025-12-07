jpn = obj_ram.jpn;
line = obj_ram.room_line;
bck = obj_ram.bck[obj_ram.room_bck];
port = obj_ram.room_port;
lines = obj_script.line;
take = obj_ram.room_take;
arg = obj_ram.room_arg;
bgm = obj_ram.room_bgm;
cue_cuts = obj_ram.cue_cuts;
if (take != -1)
{
	scr_flag_set(take);
	scr_item_delete(take);	
}


ui = obj_ram.room_ui;
if (ui)
{
	scr_open(hud_dsp_stress);
	scr_open(hud_dsp_money);
}



var tmp_bck = bck[0];

obj_room_bck.sprite_index = tmp_bck;
layer_bck = layer_background_get_id("Background");
layer_background_blend(layer_bck, bck[1]);

switch (port)
{
	case -1: obj_room_port.visible = false; break;
	case -2: obj_room_port.sprite_index = obj_ram.explode_char.port_angry; break;
	default: obj_room_port.sprite_index = port; break;
}

if (jpn)
{
	var tmp_name = sprite_get_name(port);
	var tmp_port = asset_get_index(tmp_name + "_jpn");
	if (tmp_port != -1)
	{
		obj_room_port.sprite_index = tmp_port;	
	}
}

obj_room_port.x += 8;
if (tmp_bck == bck_store)
{
	obj_room_port.y += -16;
}
if (tmp_bck == bck_english)
{
	obj_room_port.x += -8;
	obj_room_port.y += -16;
}

if (bgm != -1)
{
	scr_bgm(bgm);
}
else
if (bck[2] != -1)
{
	scr_bgm(bck[2]);
}

john = obj_ram.john;
scr_msg(lines[line]);
obj_text.delay_wait = 1;
reading = true;
yesnoing = false;
quading = false;
jpn = obj_ram.jpn;
cam = icd(x+16, y, depth, obj_cam);
scr_camera();
ani_count = 0; ani_wait = 15;
ani_frame = 0;
dir = "down";
image_speed = 0; image_index = 0;
obj_ram.paused = false;
next_x = x; next_y = y;
state = "idle";
idle_animate = true;
movespeed = 2;
walk_movespeed = 1;
sprint_movespeed = 2;
slow_movespeed = 1;
sprinting = false;
check_cooldown = false;
crate = -1;
do_blj = false;
explode_char = 0;
can_menu = obj_ram.can_menu;

obj_ram.save_room = -1;

char = obj_ram.party[0];
//sprite_index = char.spr;
sprite_index = scr_john_spr();

depth += -1;
last_dir[3] = "none";
last_dir[2] = "none";
last_dir[1] = "none";
last_dir[0] = "none";
update_blj = false;
update_innertube = false;
ready = false;
scr_get_col();
depth = -5;

l_seablock = layer_tilemap_get_id("l_seablock");
l_enc = layer_tilemap_get_id("l_enc");
has_boats = scr_hasitem(item_Boats);

if (obj_ram.warped)
{
    if (obj_ram.respawn)
    {
        x = obj_ram.last_x;
        y = obj_ram.last_y;
        obj_ram.respawn = false;
    }
    else
    {
		var tmp_pt = obj_ram.goto_pt;
		if (tmp_pt < 21)
		{
		tmp_pt = asset_get_index("obj_p" + string(tmp_pt));
		x = tmp_pt.x; y = tmp_pt.y;
		}
		else
		{
			with (par_point)
			{
				if (obj_ram.goto_pt == pt)
				{
					obj_player.x = x;
					obj_player.y = y;
				} else {instance_destroy();}
			}
		}
	}
    obj_ram.warped = false;
}

var goto_dir = obj_ram.goto_dir;
if (goto_dir != -1)
{
	switch (goto_dir)
	{
		case DIR_DOWN: dir = "down"; break;
		case DIR_RIGHT: dir = "right"; break;
		case DIR_UP: dir = "up"; break;
		case DIR_LEFT: dir = "left"; break;
	}
	image_index = goto_dir * 2;
	obj_ram.goto_dir = -1;
}
state = "ini";

on_gate = place_meeting(x, y, obj_gate);
warp_count = 0;
warp_wait = 10;

flash_count = 0;
flash_wait = 3;
flash_total = 0;
flash = false;

shake_count = 0;
shake_wait = 1;
shake_total = 0;
//shake_duration = 60 * 4 + (4 * 0.14);
shake_duration = 241;
shake = false;
need_water = false;

reading = false;

scr_ow_friends();
scr_enc_update();
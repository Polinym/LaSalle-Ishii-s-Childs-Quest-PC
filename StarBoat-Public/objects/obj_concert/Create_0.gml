state = 0;
jpn = obj_ram.jpn;
aud_min = obj_ram.aud_min;
aud_max = obj_ram.aud_max;
hall = obj_ram.aud_hall;
scr_acts_reset();
hall_data = [];
count = 0; wait = 251;
reading = false;
john = obj_ram.john;
aud_power = 0;
ap = 0;
ap_to_win = 0;
time = 0;
lines = obj_script_menu.line;
ini = false;
frames = 0;
timing = false;
update_time = false;
running = true;
menuing = false;
intro_line = 1;
rank = 0;
prize = obj_ram.prices[price_WinMall];
intro_cheer = false;

perform_move = 0;
perform_arg = 0;
scr_concert_rank();
scr_bgm_stop();
if (intro_cheer)
{
	scr_snd(snd_cq_aud_intro);	
}
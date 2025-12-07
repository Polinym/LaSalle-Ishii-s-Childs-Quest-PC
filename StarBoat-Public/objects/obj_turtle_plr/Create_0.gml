ani_count = 0; ani_wait = 15;
ani_frame = 0;
pos = 1;
state = 0;
scr_msg_sys(119);
obj_text.display = true;
turtle_pos = (obj_ram.random_number * 0x7);
bub_count = 0; bub_wait = 240;
bub_x = x-16; bub_y = y+32;
turtle = -1;
start_x = x-16;

wait_count = 0;
wait_wait = 110;
scr_flag_unset(flag_ActiveTurtle);
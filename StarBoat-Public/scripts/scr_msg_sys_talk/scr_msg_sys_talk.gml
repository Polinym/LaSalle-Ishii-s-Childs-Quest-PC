function scr_msg_sys_talk(arg_msg)
{
	if (jpn) {scr_msg("[" + obj_script_menu.line[arg_msg] + "]");}
	else {scr_msg(obj_script_menu.line[arg_msg]);}
}
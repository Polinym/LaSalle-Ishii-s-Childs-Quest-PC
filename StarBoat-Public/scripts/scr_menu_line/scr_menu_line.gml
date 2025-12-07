function scr_menu_line(arg_type, arg_w)
{
	switch (arg_type)
	{
		case "top": return scr_icon("０") + string_repeat("１", arg_w) + "２#"; break;	
		case "mid": return scr_icon("３") + string_repeat("4", arg_w) + "５#"; break;
		case "bot": return scr_icon("６") + string_repeat("７", arg_w) + "８#"; break;
	}
}
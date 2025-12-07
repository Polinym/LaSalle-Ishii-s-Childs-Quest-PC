function scr_new_ram_lines()
{
	prompt = "#  Yes  No/?";
	shop_greeting[5] = "/1Welcome!#I've got a 1#for $/A deal#on all " + scr_icon("yellow_paint") + "paint!";
	shop_greeting[0] = "/1Welcome to the#Pudding Hotel!#Want a room?";
	shop_greeting[1] = "/1Welcome to#Namington!#Please look.";
	shop_greeting[2] = "/1Welcome to#Namco-Mart!|#See anything?";
	shop_greeting[3] = "/1Benvenuti!|#This is the#Melanzana Italia!|";
	shop_greeting[4] = "/1This's the#airport! |Where to?|";

	line_btl_cmds = "Well?";
	line_no_mng = "{John} knows#no Managic!";
	line_no_items = "None to use.";
	line_managic = "{John} used#Managic!";
	line_key_item = "You'll need this!|#Make some room!/p~IK ";
	line_no_discard = "Can't discard!";
	line_left_item = "{John}#left /A./p/<";
	line_blocked = "{John} is blocked!";
	line_need_mp = "{John} needs#more Managic#Points!";
}